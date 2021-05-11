package net.crtrpt.whisper;

import java.util.List;

/**
 * @author Admin
 */
@FunctionalInterface
public interface BuildInFunction {
    /**
     * 函数调用
     * @param argv
     * @return
     */
    TLValue invoke(List<TLValue> argv);
}
