package de.ppi.samples.fuwesta.selophane.widget;

import java.util.List;

import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

import de.ppi.samples.fuwesta.selophane.base.Fragment;

/**
 * Implementation for {@link PaginatingBar}.
 *
 */
public class PaginatingBarImpl extends Fragment implements PaginatingBar {

    /**
     * List of all paginating-buttons.
     */
    @FindBy(tagName = "li")
    private List<PaginatingBarButton> buttons;

    /**
     * Initiates an object of type PaginatingBarImpl.
     *
     * @param element the parent-element
     */
    public PaginatingBarImpl(WebElement element) {
        super(element);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public PaginatingBarButton getFirst() {
        return buttons.get(0);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public PaginatingBarButton getLast() {
        return buttons.get(buttons.size() - 1);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public PaginatingBarButton getNext() {
        return buttons.get(buttons.size() - 2);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public PaginatingBarButton getPrevious() {
        return buttons.get(1);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public int getNrOfButtons() {
        return buttons.size();
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public PaginatingBarButton getButton(String text) {
        for (PaginatingBarButton webElement : buttons) {
            if (text.equals(webElement.getText())) {
                return webElement;
            }
        }
        throw new NoSuchElementException("No button with text " + text
                + " can be found.");
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public List<PaginatingBarButton> getAllButtons() {
        return buttons;
    }

}
