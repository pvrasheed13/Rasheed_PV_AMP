------------------------------------------------------------------
**Please repalce the below code into the given files**
------------------------------------------------------------------

----------------------------------------------
| **FileName - Step definitions -  web-when.js** |
----------------------------------------------
When(/^I Switch to the frame for "([^"]*)"/, { timeout: 2 * 60000 }, async (locatorName) => {
  await elementActions.switchFrame(locatorName);
});

When(/^I compare the value of "([^"]*)" to "([^"]*)"$/, { timeout: 2 * 60000 }, async (numbertoCompare, locatorName) => {
  await elementActions.compare(numbertoCompare, locatorName);
});

When(/^I get the values for "([^"]*)"/, { timeout: 2 * 60000 }, async (locatorName) => {
  await elementActions.DisplayValues(locatorName);
});

When(/^I select date for "([^"]*)"$/, { timeout: 2 * 60000 }, async (locatorName) => {
  await elementActions.datePick(locatorName);
});

-----------------------------------------------------------------------
-------------------------
|** FileName - enter-text.js** |
-------------------------
typeText: async (locatorName, textValue) => {
    try {
      const ele = await getElement(locatorName)
      await ele.clearValue();
      await ele.setValue(textValue)
      logger.info('Entered text in the element ${locatorName}');
    } catch (error) {
      logger.trace('Failed to enter text in the locator ${locatorName} - &{err');
      throw new Error('Failed to enter text in the locator ${locatorName} - ${err}');
    }
  },

  compare: async (locatorName, numbertoCompare) => {
    try {
      const ele = await getElement(locatorName);
      const text = await ele.getText();

      if (numbertoCompare === text) {
        console.log("PASS");
      } else {
        console.log("FAIL");
      }

      logger.info(`Compared the element ${locatorName}: ${text}`);
      return text;
    } catch (err) {
      logger.error(`Failed to compare the text in the locator ${locatorName}: ${err}`);
      throw new Error(`Failed to compare the text in the locator ${locatorName}: ${err}`);
    }
  },

  DisplayValues: async (locatorName) => {
    try {

      const element = await getElement(locatorName);
      console.log("The name of flights are: ");

      for (let i = 0; i < element.length; i++) {
        const element = Object.values(element[i])[0];
        const list = await element.getText();
        console.log(list.toString());

      }

      logger.info(`Displayed values for locator ${locatorName}`);
    } catch (err) {
      logger.error(`Failed to display values for locator ${locatorName}: ${err}`);
      throw new Error(`Failed to display values for locator ${locatorName}: ${err}`);
    }
  },

    getText: async (locatorName) => {
    try {
      const ele = await getElement(locatorName);
      const text = await ele.getText();
      logger.info(`Get text in the element ${locatorName}: ${text}`);
      return text;
    } catch (err) {
      logger.trace(`Failed to get text in the locator ${locatorName}: ${err}`);
      throw new Error(`Failed to get text in the locator ${locatorName}: ${err}`);
    }
  },
-----------------------------------------------------------------------
  -------------------------
|** FileName - index.js** |
-------------------------
const typeText = require('./enter-text');
const getText = require('./enter-text');
const DisplayValues = require('./enter-text');
const compare = require('./enter-text');

  ...typeText,
  ...getText,
  ...DisplayValues,
  ...compare,

