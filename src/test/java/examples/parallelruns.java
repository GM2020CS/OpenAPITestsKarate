package examples;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

@KarateOptions(tags = {"~@ignore"})
class parallelruns {

    @Test
    void testParallel() {
//        System.setProperty("karate.env", "env");
        Results results = Runner.parallel(getClass(), 5, "target/surefire-reports");
        assertTrue(results.getFailCount() == 0, results.getErrorMessages());

    }

}