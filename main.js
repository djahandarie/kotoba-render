const fs = require('fs');
const { render } = require('./render_text.js');

const effect = 'antiocr';

console.log(`Rendering 日本 to ./nihon.png with effect: ${effect}`);

async function main() {
  const pngData = await render('英雄', undefined, undefined, undefined, 'ackaisyo', false, effect);
  fs.writeFileSync('./nihon.png', pngData);
}

main().then(() => {
  console.log('Done!');
  process.exit(0);
}).catch((err) => {
  console.error(err);
  process.exit(1);
});
