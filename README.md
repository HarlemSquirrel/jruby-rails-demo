# jruby-rails-demo

This app is intended to show the issue with jruby, rails, and capybara-webkit.

Run the test with `bundle exec rspec` and look for the following output.

```
.

Finished in 2.75 seconds (files took 22.47 seconds to load)
1 example, 0 failures

java.nio.channels.AsynchronousCloseException
	at java.nio.channels.spi.AbstractInterruptibleChannel.end(AbstractInterruptibleChannel.java:205)
	at sun.nio.ch.SourceChannelImpl.read(SourceChannelImpl.java:172)
	at org.jruby.RubyIO.transfer(RubyIO.java:4239)
	at org.jruby.RubyIO.copy_stream(RubyIO.java:4126)
	at org.jruby.RubyIO$INVOKER$s$0$2$copy_stream.call(RubyIO$INVOKER$s$0$2$copy_stream.gen)
	at org.jruby.internal.runtime.methods.JavaMethod$JavaMethodN.call(JavaMethod.java:724)
	at org.jruby.internal.runtime.methods.DynamicMethod.call(DynamicMethod.java:208)
	at org.jruby.runtime.callsite.CachingCallSite.cacheAndCall(CachingCallSite.java:358)
	at org.jruby.runtime.callsite.CachingCallSite.call(CachingCallSite.java:195)
	at org.jruby.ir.interpreter.InterpreterEngine.processCall(InterpreterEngine.java:324)
	at org.jruby.ir.interpreter.StartupInterpreterEngine.interpret(StartupInterpreterEngine.java:73)
	at org.jruby.ir.interpreter.Interpreter.INTERPRET_BLOCK(Interpreter.java:132)
	at org.jruby.runtime.MixedModeIRBlockBody.commonYieldPath(MixedModeIRBlockBody.java:148)
	at org.jruby.runtime.IRBlockBody.call(IRBlockBody.java:69)
	at org.jruby.runtime.Block.call(Block.java:126)
	at org.jruby.RubyProc.call(RubyProc.java:289)
	at org.jruby.RubyProc.call(RubyProc.java:246)
	at org.jruby.internal.runtime.RubyRunnable.run(RubyRunnable.java:104)
	at java.lang.Thread.run(Thread.java:748)
  ```
