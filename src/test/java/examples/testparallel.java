package examples;

import com.intuit.karate.KarateOptions;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;
import org.apache.commons.io.FileUtils;
import org.junit.jupiter.api.Test;
@KarateOptions(tags = {"~@ignore"})
class TestParallel {
 @Test
void testParallel() {
{
String karateOutputPath = "target/surefire-reports";
generateReport(karateOutputPath);
}
 }

public static void generateReport(String karateOutputPath) {
Collection<File> jsonFiles = FileUtils.listFiles(new File(karateOutputPath), new String[] {"json"}, true);
List<String> jsonPaths = new ArrayList(jsonFiles.size());
jsonFiles.forEach(file -> jsonPaths.add(file.getAbsolutePath()));
Configuration config = new Configuration(new File("target/Open RestAPI's report"), "OpenAPIKarate");
ReportBuilder reportBuilder = new ReportBuilder(jsonPaths, config);
reportBuilder.generateReports();
}
}
