// generated by codegen/codegen.py
import codeql.swift.elements
import TestUtils

from EnumDecl x, ModuleDecl getModule, Type getInterfaceType, string getName, Type getType
where
  toBeTested(x) and
  not x.isUnknown() and
  getModule = x.getModule() and
  getInterfaceType = x.getInterfaceType() and
  getName = x.getName() and
  getType = x.getType()
select x, "getModule:", getModule, "getInterfaceType:", getInterfaceType, "getName:", getName,
  "getType:", getType
