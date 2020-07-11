---
to: tests/lib/rules/<%= name %>.spec.ts
---
import { RuleTester } from "../../util";

import rule from "../../../lib/rules/<%= name %>";

const tester = new RuleTester({
  parserOptions: {
    sourceType: "module",
  },
});

tester.run("<%= name %>", rule, {
  valid: [""],
  invalid: [
    {
      code: "",
      output: "",
      options: [],
      errors: [{ messageId: "<%= h.changeCase.camel(name) %>" }],
    },
  ],
});
