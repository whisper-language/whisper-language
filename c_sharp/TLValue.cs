using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace whisper_language.gen
{
    class TLValue
    {
        public static  TLValue NULL = new TLValue();

        public static  TLValue VOID = new TLValue();

        private dynamic value;

        public TLValue()
        {
            // private constructor: only used for NULL and VOID
            value = new Object();
        }

        public TLValue(dynamic v)
        {
            if (v == null)
            {
                throw new Exception("v == null");
            }
            value = v;
            // only accept boolean, list, number or string types
            if (!(IsBoolean() || isList() || IsNumber() || IsString()))
            {
                throw new Exception("错误的数据类型: " + v + " (" + v.GetType() + ")");
            }
        }

        public bool asBoolean()
        {
            return (bool)value;
        }

        public double asDouble()
        {
            return (double)value;
        }

        public long asLong()
        {
            return (long)value;
        }

        public int asInt()
        {
            return (int)value;
        }

        public Byte asByte()
        {
            return (byte)value;
        }


        public List<TLValue> asList()
        {
            return (List<TLValue>)value;
        }

        public String asString()
        {
            return (string)value;
        }

    
        public int CompareTo(TLValue that)
        {
            if (this.IsNumber() && that.IsNumber())
            {
                if (this.Equals(that))
                {
                    return 0;
                }
                else
                {
                    return this.asDouble().CompareTo(that.asDouble());
                }
            }
            else if (this.IsString() && that.IsString())
            {
                return this.asString().CompareTo(that.asString());
            }
            else
            {
                throw new Exception("错误的表达式无法比较 `" + this + "` ~ `" + that + "`");
            }
        }


        override public bool Equals(Object o)
        {
            if (this == VOID || o == VOID)
            {
                throw new Exception("can't use VOID: " + this + " ==/!= " + o);
            }
            if (this == o)
            {
                return true;
            }
            if (o == null || this.GetType() != o.GetType())
            {
                return false;
            }
            TLValue that = (TLValue)o;
            if (this.IsNumber() && that.IsNumber())
            {
                double diff = Math.Abs(this.asDouble() - that.asDouble());
                return diff < 0.00000000001;
            }
            else if (this.isList() && that.isList()) {
                return Enumerable.SequenceEqual(this.value,that.value);
            }
            else{
                return this.value.Equals(that.value);
            }
        }


        public bool IsBoolean()
        {
            return value is bool;
        }

        public bool IsNumber()
        {
            return value is int || value is long || value is float || value is double ;
        }

        public bool isList()
        {
            return value is ICollection;
        }

        public bool isNull()
        {
            return this == NULL;
        }

        public bool isVoid()
        {
            return this == VOID;
        }

        public bool IsString()
        {
            return value is String;
        }
        override public String ToString()
        {
            return isNull() ? "NULL" : isVoid() ? "VOID" : value.ToString();
        }

    }


}
