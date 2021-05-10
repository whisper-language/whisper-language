using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;

namespace whisper_language.gen
{
    class TLValue
    {
        public static  TLValue NULL = new TLValue();

        public static  TLValue VOID = new TLValue();

        private Object value;

        public TLValue()
        {
            // private constructor: only used for NULL and VOID
            value = new Object();
        }

        TLValue(Object v)
        {
            if (v == null)
            {
                throw new Exception("v == null");
            }
            value = v;
            // only accept boolean, list, number or string types
            if (!(IsBoolean() || isList() || IsNumber() || isString()))
            {
                throw new Exception("invalid data type: " + v + " (" + "xxxxx" + ")");
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
            return (String)value;
        }

    
        public int CompareTo(TLValue that)
        {
            if (this.IsNumber() && that.IsNumber())
            {
                if (this.equals(that))
                {
                    return 0;
                }
                else
                {
                    return this.asDouble().CompareTo(that.asDouble());
                }
            }
            else if (this.isString() && that.isString())
            {
                return this.asString().CompareTo(that.asString());
            }
            else
            {
                throw new Exception("illegal expression: can't compare `" + this + "` to `" + that + "`");
            }
        }


        public bool equals(Object o)
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
            else
            {
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

        public bool isString()
        {
            return value is String;
        }


    }
}
