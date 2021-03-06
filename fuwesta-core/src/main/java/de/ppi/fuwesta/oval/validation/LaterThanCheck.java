package de.ppi.fuwesta.oval.validation;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Checks, if a comparable time of the given field later than the reference
 * field.
 * 
 */
public class LaterThanCheck extends AbstractCompareableCheck<LaterThan> {

    /** The Logger. */
    private static final Logger LOG = LoggerFactory
            .getLogger(LaterThanCheck.class);

    /** The Constant serialVersionUID. */
    private static final long serialVersionUID = 1L;

    /** The Constant MESSAGE. */
    public static final String MESSAGE = "validation.later.than";

    /** Instantiates a new check. */
    public LaterThanCheck() {
        super(ComparableMode.GREATER);
        setMessage(MESSAGE);
    }

    @Override
    public void configure(final LaterThan constraintAnnotation) {
        LOG.debug("LaterThanCheck.configure");
        super.configure(constraintAnnotation);
        setMessage(constraintAnnotation.message());
        setReferencedField(constraintAnnotation.value());
    }
}
