import utest.Test;
import utest.Assert;

class TestTypes extends Test
{
   var i0:Int = 1;
   var i1:cpp.Int32 = 1;
   var i2:cpp.UInt32 = 1;
   var i3:cpp.Int64 = 1;
   var i4:cpp.UInt64 = 1;
   var i5:cpp.Int8 = 1;
   var i6:cpp.UInt8 = 1;
   var i7:cpp.Int16 = 1;
   var i8:cpp.UInt16 = 1;

   public function new() super();

   function stringToCcs(string:String) : cpp.ConstCharStar
   {
      return string;
   }

   function ccsToString(ccs:cpp.ConstCharStar) : String
   {
      return ccs;
   }

   function ccsToStringCast(ccs:cpp.ConstCharStar) : String
   {
      return cast ccs;
   }

   public function testConstCharStar()
   {
      var ccs = stringToCcs("hello");
      Assert.equals( ccsToString(ccs), "hello" );
      Assert.equals( ccsToStringCast(ccs), "hello" );
   }

   public function testDynamic()
   {
      var d:Dynamic = this;
      Assert.equals(d.i0, 1);
      Assert.equals(d.i1, 1);
      Assert.equals(d.i2, 1);
      Assert.equals(d.i3, 1);
      Assert.equals(d.i4, 1);
      Assert.equals(d.i5, 1);
      Assert.equals(d.i6, 1);
      Assert.equals(d.i7, 1);
   }
}
