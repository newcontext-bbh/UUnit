import System

class UUnitAssertException (Exception): 
	public Expected as duck
	public Received as duck
	public Msg as string
	def constructor(expected, received, msg):
		if expected == null: expected = "(null)"
		if received == null: received = "(null)"
		if msg != null: msg = "\n\t" + msg
		super("[UUnit] - Assert Failed" + msg + "\n\tExpected: " + expected + "\n\tReceived: " + received)
