using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.Objects;
using System.Runtime.Remoting.Messaging;

namespace Dao
{
    public class ObjectContextFactory
    {
        public static ObjectContext GetCurrentObjectContext()
        {
            ObjectContext objectContext = CallContext.GetData(typeof(ObjectContextFactory).FullName) as ObjectContext;

            if (objectContext == null)
            {
                objectContext = new ModelContainer();
            }
        }
    }
}
