function myFunction(param1:String, param2:int):void {
  if (typeof param1 !== "string") {
    throw new Error("param1 must be a string");
  }
  if (typeof param2 !== "number") {
    throw new Error("param2 must be a number");
  }
  trace(param1);
  trace(param2);
}

try {
  myFunction("hello", 10); //This works fine
  myFunction(10, "hello"); // This will throw a custom error
} catch (e:Error) {
  trace("Error: " + e.message);
}

//Alternative using strict type checking (if possible):
function myFunctionStrict(param1:String, param2:int):void {
  trace(param1);
  trace(param2);
}

//myFunctionStrict(10, "hello"); //Compiler Error (Strict Type Checking) 