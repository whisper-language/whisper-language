using System;
using whisper_language.gen;

namespace whisper_language
{
    class ReturnValue:Exception
    {
        public TLValue value;
    }
}
