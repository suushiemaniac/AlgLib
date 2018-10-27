package com.suushiemaniac.cubing.alglib.move.plane

enum class SkewbPlane(override val notation: String) : Plane {
    UP("U"), LEFT("L"), RIGHT("R"), BACK("B");

    override val isRotation: Boolean = false

    companion object {
        fun fromNotation(notation: String): SkewbPlane? {
            return values().find { it.notation == notation }
        }
    }
}
