import io.cucumber.testng.CucumberOptions;
import io.cucumber.testng.AbstractTestNGCucumberTests;
import org.testng.annotations.Test;

@CucumberOptions(
        features = "src/test/resources/features",
        glue = "itads.minhthangtrantester.stepdefinitions",
        plugin = {"pretty", "html:target/cucumber-html-report.html"}
)
@Test
public class runCucumberTest extends AbstractTestNGCucumberTests {

}