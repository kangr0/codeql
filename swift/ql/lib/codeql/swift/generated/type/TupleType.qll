// generated by codegen/codegen.py
private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.type.Type

module Generated {
  class TupleType extends Synth::TTupleType, Type {
    override string getAPrimaryQlClass() { result = "TupleType" }

    /**
     * Gets the `index`th type of this tuple type (0-based).
     *
     * This includes nodes from the "hidden" AST. It can be overridden in subclasses to change the
     * behavior of both the `Immediate` and non-`Immediate` versions.
     */
    Type getImmediateType(int index) {
      result =
        Synth::convertTypeFromRaw(Synth::convertTupleTypeToRaw(this).(Raw::TupleType).getType(index))
    }

    /**
     * Gets the `index`th type of this tuple type (0-based).
     */
    final Type getType(int index) { result = getImmediateType(index).resolve() }

    /**
     * Gets any of the types of this tuple type.
     */
    final Type getAType() { result = getType(_) }

    /**
     * Gets the number of types of this tuple type.
     */
    final int getNumberOfTypes() { result = count(getAType()) }

    /**
     * Gets the `index`th name of this tuple type (0-based).
     */
    string getName(int index) {
      result = Synth::convertTupleTypeToRaw(this).(Raw::TupleType).getName(index)
    }

    /**
     * Gets any of the names of this tuple type.
     */
    final string getAName() { result = getName(_) }

    /**
     * Gets the number of names of this tuple type.
     */
    final int getNumberOfNames() { result = count(getAName()) }
  }
}
