package io.loopcamp.pages;

import io.loopcamp.utility.ConfigurationReader;
import io.loopcamp.utility.Driver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class LoginPage extends BasePage {

    @FindBy(xpath = "//label[text()='Username or email']/following-sibling::input")
    public WebElement emailBox;

    @FindBy(xpath = "//label[text()='Password']/following-sibling::input")
    public WebElement passwordBox;

    @FindBy(className = "v-btn__content")
    public WebElement loginButton;

    public void login(String userType) {

        String username = ConfigurationReader.getProperty(userType + "_username");
        String password = ConfigurationReader.getProperty(userType + "_password");

        emailBox.sendKeys(username);
        passwordBox.sendKeys(password);
        loginButton.click();
    }

}

