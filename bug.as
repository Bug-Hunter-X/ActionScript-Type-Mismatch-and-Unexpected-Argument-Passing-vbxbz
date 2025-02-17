function myFunction(param1:String, param2:int):void {
  trace(param1);
  trace(param2);
}

myFunction("hello", 10); //This works fine
myFunction(10, "hello"); // This will throw a runtime error