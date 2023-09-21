import "@typespec/rest";
import "@typespec/openapi3";

using TypeSpec.Http;

@service({
  title: "Pet Store Service",
  version: "2021-03-25",
})
@server("https://example.com", "Single server endpoint")
@doc("This is a sample server Petstore server.")

@route("/pets")
namespace Pets {
  op list(): Pet[];
}

model Pet {
  name: string;
}