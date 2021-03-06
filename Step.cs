//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Collections.Specialized;

namespace TeachPlan
{
    public partial class Step
    {
        #region Primitive Properties
    
        public virtual int Id
        {
            get;
            set;
        }
    
        public virtual string Name
        {
            get;
            set;
        }
    
        public virtual string Content
        {
            get;
            set;
        }

        #endregion
        #region Navigation Properties
    
        public virtual Active Active
        {
            get { return _active; }
            set
            {
                if (!ReferenceEquals(_active, value))
                {
                    var previousValue = _active;
                    _active = value;
                    FixupActive(previousValue);
                }
            }
        }
        private Active _active;

        #endregion
        #region Association Fixup
    
        private void FixupActive(Active previousValue)
        {
            if (previousValue != null && previousValue.Steps.Contains(this))
            {
                previousValue.Steps.Remove(this);
            }
    
            if (Active != null)
            {
                if (!Active.Steps.Contains(this))
                {
                    Active.Steps.Add(this);
                }
            }
        }

        #endregion
    }
}
