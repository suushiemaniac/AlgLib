package com.suushiemaniac.cubing.alglib.modify.mirror;

import com.suushiemaniac.cubing.alglib.move.ClockMove;
import com.suushiemaniac.cubing.alglib.move.Move;

public enum ClockMirror implements Mirror {
    X, Y, Z;

    @Override
    public Move mirror(Move origin) {
        return null;
    }

    @Override
    public Move modify(Move origin) {
        return this.mirror(origin);
    }

    @Override
    public boolean supportsMoveClass(Move moveInst) {
        return moveInst instanceof ClockMove;
    }
}
