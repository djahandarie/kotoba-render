# Readme

This project contains text rendering code isolated from Kotoba bot to make it easier to make and test changes without having to run the bot.

## Setup

1. Clone this repo
2. Install Node.js v16 from https://nodejs.org/en/
3. Run `npm install` in this directory

## Executing

Run `node main.js` in this directory. A file named `nihon.png` will be written to this directory, with the rendered text.

## Developing anti-OCR effect

In `render_text.js` you can update the `render()` function to do something special if `effect === 'antiocr'` (or whatever you want to call it). I imagine that will involve writing some sort of image, gradient, or pattern onto the background and/or text (around lines 40-50 in the source file).

The canvas implements the same API as the [HTML canvas element](https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API).

You can run `node main.js` to render to `nihon.png` to test your changes.

Alternatively, run `npx nodemon main.js` to watch the files for changes and automatically re-render the image when you save.

## Debugging

In VS Code, you can debug with breakpoints by running the `Launch Program` debug configuration from the debug tab.

## Font

You can change the font in `main.js` to test with a different font if you want. I set it to `Meiryo`, a font that all Windows computers should have installed by default. You can try other fonts too if you have them installed on your machine. Use `k!draw` on the bot to see the fonts that the bot supports (some of the names shown in the dialog are different from the ones you would use in `main.js` however). I can also add new fonts to the bot by request but only if their licensing conditions permit it.

## Pull Request

Once done you can either make a pull request with the changes to [this file](https://github.com/mistval/kotoba/blob/master/bot/src/common/render_text.js) or just send the code to me K33#5261 if you don't care about GitHub brownie points (or PR it to this repo instead of the bot repo). (and if you DO want to actually try it in the bot, you can make changes to that file and run the bot locally, check the README in the bot repo for instructions).

The file in the bot repo contains an additional `renderStrokes` function so make sure not to delete it if you're PRing. I removed that function from this project just so it's not a distraction.

If you just update the render function I will glady do the plumbing to make it useable via bot settings and inline quiz arguments.
