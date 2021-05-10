using System;
using System.Collections.Generic;
using System.Text;
using whisper_language.gen;

namespace whisper_language
{
    class Scope
    {
        Scope parent;
        Dictionary<String, TLValue> variables;
        private bool isFunction;


        public Scope(Scope p, bool function)
        {
            parent = p;
            variables = new Dictionary<string, TLValue>();
            isFunction = function;
        }

        public void assignParam(String var, TLValue value)
        {
            variables.Add(var, value);
        }

        public void assign(String var, TLValue value)
        {
            if (resolve(var, !isFunction) != null)
            {
                // There is already such a variable, re-assign it
                this.reAssign(var, value);
            }
            else
            {
                // A newly declared variable
                variables.Add(var, value);
            }
        }

        private bool isGlobalScope()
        {
            return parent == null;
        }

        private void reAssign(String identifier, TLValue value)
        {
            if (variables.ContainsKey(identifier))
            {
                // The variable is declared in this scope
                variables.Add(identifier, value);
            }
            else if (parent != null)
            {
                // The variable was not declared in this scope, so let
                // the parent scope re-assign it
                parent.reAssign(identifier, value);
            }
        }

        public TLValue resolve(String var)
        {
            return resolve(var, true);
        }

        private TLValue resolve(String var, bool checkParent)
        {
            TLValue value = variables[var];
            if (value != null)
            {
                // The variable resides in this scope
                return value;
            }
            else if (checkParent && !isGlobalScope())
            {
                // Let the parent scope look for the variable
                return parent.resolve(var, !parent.isFunction);
            }
            else
            {
                // Unknown variable
                return null;
            }
        }

    }
}
