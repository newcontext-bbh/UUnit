import UnityEngine
import System

class UUnitAssert (): 

	static def True(boolean as bool,msg as string):
		return if boolean 
		raise UUnitAssertException(true, false, msg);
		
	static def False(boolean as bool,msg as string):
		return unless boolean
		raise UUnitAssertException(false, true, msg);
		
	static def EqualString(wanted as string,got as string,msg as string):
		return if wanted == got
		raise UUnitAssertException(wanted, got, msg)
	
	static def EqualDuck(wanted as duck,got as duck,msg as string):
		return if wanted == got 
		raise UUnitAssertException(wanted, got, msg)
		