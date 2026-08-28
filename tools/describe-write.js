#!/usr/bin/env node
/**
 * Write one page's screen doc into the ai:begin/ai:end block of its page.md.
 *
 * The describe step is the AI's job, but *placing* the text is mechanical and is the one part
 * that can silently damage a library — a bad edit outside the markers overwrites captured
 * ground truth. So the writing is done here, by a script that can only ever touch the span
 * between the two markers, and refuses if it cannot find exactly one of each.
 *
 *   node tools/describe-write.js <slug> <file-with-the-doc>
 *   node tools/describe-write.js <slug> -            # read the doc from stdin
 *
 * Everything it writes stays labelled method: ai. It is interpretation, not ground truth.
 */
const fs = require('fs');
const path = require('path');

const BEGIN = '<!-- ai:begin method=ai — written by the describe step, NOT ground truth -->';
const END = '<!-- ai:end -->';

const [slug, src] = process.argv.slice(2);
if (!slug || !src) {
  console.error('Usage: node tools/describe-write.js <slug> <file|->');
  process.exit(1);
}

const pageMd = path.join(__dirname, '..', 'design-context', 'pages', slug, 'page.md');
if (!fs.existsSync(pageMd)) {
  console.error(`No such page: ${slug} (looked for ${pageMd})`);
  process.exit(1);
}

const doc = (src === '-' ? fs.readFileSync(0, 'utf8') : fs.readFileSync(src, 'utf8')).trim();
if (!doc) { console.error('Empty description — refusing to write.'); process.exit(1); }

const md = fs.readFileSync(pageMd, 'utf8');
const b = md.indexOf(BEGIN);
const e = md.indexOf(END);
if (b === -1 || e === -1 || e < b) {
  console.error(`${slug}: could not find a single ai:begin/ai:end pair — refusing to write.`);
  process.exit(1);
}
if (md.indexOf(BEGIN, b + 1) !== -1 || md.indexOf(END, e + 1) !== -1) {
  console.error(`${slug}: more than one marker pair — refusing to write.`);
  process.exit(1);
}

const next = md.slice(0, b + BEGIN.length) + '\n' + doc + '\n' + md.slice(e);
fs.writeFileSync(pageMd, next, 'utf8');

const firstPara = doc.split(/\n\s*\n/)[0].replace(/\s+/g, ' ').trim();
console.log(`✓ ${slug} — ${doc.length} chars · one-liner: ${firstPara.slice(0, 90)}${firstPara.length > 90 ? '…' : ''}`);
