package de.ppi.samples.fuwesta.selophane.widget;

import java.util.List;

import lombok.Getter;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

import de.ppi.samples.fuwesta.selophane.base.Fragment;

/**
 * Implememtation of an ActionTable.
 *
 */
@Getter
public class ActionTableImpl extends Fragment implements ActionTable {

    /**
     * Initiates an object of type ActionTableImpl.
     *
     * @param element element to wrap up
     */
    public ActionTableImpl(WebElement element) {
        super(element);
    }

    /** The data rows. */
    @FindBy(css = "tbody tr")
    private List<ActionTable.Row> dataRows;

    /**
     * {@inheritDoc}
     */
    @Override
    public int getNrOfDataRows() {
        return dataRows.size();
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public int getNrOfDataColumns() {
        return findElement(By.cssSelector("tr")).findElements(
                By.cssSelector("*")).size() - 1;

    }

    /**
     * {@inheritDoc}
     */
    @Override
    public List<WebElement> getHeader() {
        final List<WebElement> headerRows =
                findElements(By.cssSelector("thead tr"));
        if (headerRows.size() != 1) {
            throw new IllegalStateException(
                    "A action table should have exactly 1 header-row, and not "
                            + headerRows.size());
        }
        return headerRows.get(0).findElements(By.tagName("td"));
    }

    /**
     * The default implementation of a {@link ActionTable.Row}.
     *
     */
    public static final class RowImpl extends Fragment implements Row {

        /**
         * List of actions.
         */
        @FindBy(xpath = "td[last()]/a")
        private List<ActionButton> actions;

        /**
         * Initiates an object of type RowImpl.
         *
         * @param element element to wrap up
         */
        public RowImpl(WebElement element) {
            super(element);
        }

        /**
         * {@inheritDoc}
         */
        @Override
        public WebElement getColumn(int i) {

            return findElements(By.tagName("td")).get(i);
        }

        /**
         * {@inheritDoc}
         */
        @Override
        public List<ActionButton> getActions() {
            return actions;
        }

        /**
         * Default implementation of {@link ActionButton}.
         *
         */
        public static final class ActionButtonImpl extends Fragment implements
                ActionButton {

            /**
             * Initiates an object of type ActionButtonImpl.
             *
             * @param element element to wrap up.
             */
            public ActionButtonImpl(WebElement element) {
                super(element);
            }

            /**
             * {@inheritDoc}
             */
            @Override
            public String getLabel() {
                return getText();
            }

        }

    }
}