using System;
using System.Collections.Generic;
using System.Text;
using whisper_language.gen;

namespace whisper_language
{
    interface BuildInFunction
    {
        TLValue invoke(List<TLValue> argv);
    }
}
