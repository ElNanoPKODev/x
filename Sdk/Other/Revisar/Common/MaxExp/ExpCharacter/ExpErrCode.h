//
#pragma once

enum lwExpErrCodeEnum
{
    EXP_ERR_OK =                0x0000,
    EXP_ERR_INVALID_NAME =      0x0001,
    EXP_ERR_NO_SKINOBJ,
    EXP_ERR_INVALID_SKINNAME,
};


static const char* str_err_code[] =
{
    "Export Success",
    "输入的文件名无效\n文件名必须是如下格式：[模型序列号][组号]\n序列号必须是4位整数，组号必须是4位整数\n如：00010000, 00020100",
    "没有有效的皮肤模型\n导出人物必须要有绑定Physique或者Skin的模型",
    "皮肤模型名称无效\n名称必须是是如下格式：obj_[部位号]\n部位号必须是0－5的单位整数\n如：obj_0, obj_3",
};