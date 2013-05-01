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
    public partial class Method
    {
        #region Primitive Properties
    
        public virtual int Id
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
    
        public virtual Point Point
        {
            get { return _point; }
            set
            {
                if (!ReferenceEquals(_point, value))
                {
                    var previousValue = _point;
                    _point = value;
                    FixupPoint(previousValue);
                }
            }
        }
        private Point _point;

        #endregion
        #region Association Fixup
    
        private void FixupPoint(Point previousValue)
        {
            if (previousValue != null && previousValue.Method.Contains(this))
            {
                previousValue.Method.Remove(this);
            }
    
            if (Point != null)
            {
                if (!Point.Method.Contains(this))
                {
                    Point.Method.Add(this);
                }
            }
        }

        #endregion
    }
}
