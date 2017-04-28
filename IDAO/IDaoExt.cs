using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Domain;//引用Domain的命名空间

namespace IDAO //实体类接口所在的命名空间
{
    
    public interface INoteInfoDao:IBaseDao<NoteInfo> //生成实体对象接口
    {
    }
    
    public interface IUserInfoDao:IBaseDao<UserInfo> //生成实体对象接口
    {
    }
}