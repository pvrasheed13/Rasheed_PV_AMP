const path = require('path');
const { Given, When, Then } = require('@cucumber/cucumber');
const { default: WebDriver } = require('webdriver');
const elementActions = require('/Users/pvrasheed/Documents/AMP/NimbleAutom8/node_modules/@deloitte/web/utils/web-actions/index.js');
const hello = require('/Users/pvrasheed/Documents/AMP/NimbleAutom8/node_modules/@deloitte/web/utils/web-actions/select.js');

// Custom Step Definitions can be written in this file

When(/^I enter text "([^"]*)" in the web element "([^"]*)"/, { timeout: 2 * 60000 }, async (textValue, locatorName) => {
    await elementActions.typeText(locatorName, textValue);
});


Then(/^I want verify the text "([^"]*)" in the web element "([^"]*)"/, { timeout: 2 * 60000 }, async (textValue, locatorName) => {
    await elementActions.When(/^I want verify the text "([^"]*)" in the web element "([^"]*)"/, { timeout: 2 * 60000 }, async (textValue, locatorName) => {
        await elementActions.verifyLabel(locatorName, textValue);
    }); (locatorName, textValue);
});


When(/^I open dropdown "([^"]*)" a value "([^"]*)"/, { timeout: 2 * 60000 }, async (value, locatorName) => {
    await hello.selectByVisibleText(locatorName, value);
});