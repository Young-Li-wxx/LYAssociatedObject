//
//  UIViewController+Extension.m
//  LYAssociatedObject
//
//  Created by Gordon on 16/8/22.
//  Copyright © 2016年 Gordon. All rights reserved.
//



#import "UIViewController+Extension.h"
#import <objc/runtime.h>

@implementation UIViewController (Extension)


/**
 *  此方法并不是修改了类本身的结构，原理是通过添加关联对象的方法实现类似的效果
 */

static char *name;

- (void)setLy_name:(NSString *)ly_name
{
    objc_setAssociatedObject(self, name, ly_name, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSString *)ly_name
{
    return objc_getAssociatedObject(self, name);
}

/**
 *  
 *   void objc_setAssociatedObject(id object, void *key, id value, objc_AssociationPolicy policy)
 *
 *   Parameters
 *   object     The source object for the association.   给谁添加关联对象
 *   key        The key for the association.     关联对象的原理是kvc,所以key一定不能变，要用static修饰。
 *   value      The value to associate with the key key for object.   值
 *   policy     The policy for the association. For possible values.  如下 类似 assign,copy,stong等
 */

//typedef OBJC_ENUM(uintptr_t, objc_AssociationPolicy) {
//    OBJC_ASSOCIATION_ASSIGN = 0,           /**< Specifies a weak reference to the associated object. */
//    OBJC_ASSOCIATION_RETAIN_NONATOMIC = 1, /**< Specifies a strong reference to the associated object.
//                                            *   The association is not made atomically. */
//    OBJC_ASSOCIATION_COPY_NONATOMIC = 3,   /**< Specifies that the associated object is copied.
//                                            *   The association is not made atomically. */
//    OBJC_ASSOCIATION_RETAIN = 01401,       /**< Specifies a strong reference to the associated object.
//                                            *   The association is made atomically. */
//    OBJC_ASSOCIATION_COPY = 01403          /**< Specifies that the associated object is copied.
//                                            *   The association is made atomically. */
//};

@end
