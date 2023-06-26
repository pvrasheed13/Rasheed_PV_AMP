const drivers = {
  chrome: { version: process.env.CHROME_DRIVER }, // https://chromedriver.chromium.org/
  firefox: { version: process.env.FIREFOX_DRIVER }, // https://github.com/mozilla/geckodriver/releases
  chromiumedge: { version: process.env.MICROSOFT_EDGE_DRIVER }, // https://developer.microsoft.com/en-us/microsoft-edge/tools/webdriver/
};

module.exports = [
  // ['selenium-standalone', {
  //   logPath: 'logs',
  //   installArgs: { drivers }, // drivers to install
  //   args: { drivers }, // drivers to use
  // }],
  // ['ms-teams', {
  //   webhookURL: <Send a Teams webhook URL>,
  //   message: 'An automated test run just completed'
  // }]
];
