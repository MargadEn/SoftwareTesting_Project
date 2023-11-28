package StepDefinition;

import io.cucumber.java.en.Then;
import org.junit.Assert;

/**
 * The class that is used to test the checkout.feature file.
 */
public class CheckOutStepDefs extends AbstractStepDefs{
    @Then("the Checkout step two page is opened")
    public void theCheckoutStepTwoPageIsOpened() {
        Assert.assertEquals(driver.getCurrentUrl(), "https://www.saucedemo.com/checkout-step-two.html");
    }

    @Then("{string} is shown")
    public void messageIsShown(String message) {
        Assert.assertEquals(message,inventoryPage.getInformationErrorMessage());
    }
}
