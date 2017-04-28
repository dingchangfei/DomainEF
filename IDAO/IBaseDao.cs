using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace IDAO
{
    public interface IBaseDao<T> where T:class, new ()
    {
        IQueryable<T> LoadEntites(Func<T, bool> whereLambda);

        IQueryable<T> LoadEntites(Func<T, bool> whereLambda, int pageIndex, int pageSize, out int totalCount);

        T AddEntity(T entity);

        T UpdateEntity(T entity);

        bool DelEntity(T entity);

        bool DelEntityByWhere(Func<T, bool> whereLambda);
    }
}
