package de.ppi.fuwesta.thymeleaf.bootstrap;

import java.io.File;
import java.io.IOException;
import java.util.Collection;

import org.junit.runner.RunWith;
import org.junit.runners.Parameterized;
import org.junit.runners.Parameterized.Parameters;

import de.ppi.fuwesta.thymeleaf.basic.ThymeleafTest;

/**
 * Test for {@link BootstrapDialect}.
 * 
 */
@RunWith(Parameterized.class)
public class BootstrapDialectThymeleafTest extends ThymeleafTest {

    @Parameters(name = "{0}")
    public static Collection<Object[]> getFilenames() throws IOException {
        return ThymeleafTest
                .getFilenames("classpath:/thymeleaf/bootstrap/**/*.thtest");
    }

    public BootstrapDialectThymeleafTest(String name, File testSpec) {
        super(name, testSpec);
    }
}
