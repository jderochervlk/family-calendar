// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Zora from "zora";
import * as Person from "../src/person.mjs";
import * as MockPerson from "./mockPerson.mjs";
import * as S$ReScriptStruct from "rescript-struct/src/S.mjs";

var expected = {
  id: 1,
  firstName: "John",
  lastName: "Doe"
};

Zora.test("should parse good data", (function (t) {
        var result = S$ReScriptStruct.parseWith(MockPerson.mock, Person.personStruct);
        t.equal(result, {
              TAG: /* Ok */0,
              _0: expected
            }, "Should be a tasty dessert");
      }));

export {
  expected ,
}
/*  Not a pure module */
