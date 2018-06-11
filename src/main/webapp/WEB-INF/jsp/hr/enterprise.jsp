<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>enterprise</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/EnterpriseFile/css/base.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/EnterpriseFile/css/head.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/EnterpriseFile/css/last.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/EnterpriseFile/css/Enterprise-introduction.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/EnterpriseFile/css/editing-enterprise.css">
    <link rel="stylesheet" href="">
</head>
<body>
<div class="dingdan-head">
    <div class="mediate">
        <div class="head-header">
            <div class="header-left">
                <div>
                    <a href="${pageContext.request.contextPath}/main"><img src="${pageContext.request.contextPath}/EnterpriseFile/img/hcrclogo.jpg" alt=""></a>
                </div>
                <div class="left-left">
                    <span>|</span>
                    <a href="${pageContext.request.contextPath}/hr/hr_hrmain">返回首页</a>
                </div>
            </div>
            <div class="header-right">
                <div>
                    <p>东方嘉盛集团</p>
                    <p><a href="${pageContext.request.contextPath}/hr/hrExit">退出账号</a></p>
                </div>
                <div>
                    <img src="${pageContext.request.contextPath}/EnterpriseFile/img/baitu.jpg" alt="">
                </div>
            </div>
        </div>
    </div>
</div>
<div class="dingdan-conter">
    <div class="mediate">
        <div class="conter-left">
        	<p><img src="${pageContext.request.contextPath}/EnterpriseFile/img/qiyejianjie.jpg" alt=""><a href="${pageContext.request.contextPath}/hr/hr_enterprise"><span>企业简介</span></a></p>
            <p><img src="${pageContext.request.contextPath}/EnterpriseFile/img/tuijianrencai.jpg" alt=""><a href=""><span>劳务详情</span></a></p>
            <p><img src="${pageContext.request.contextPath}/EnterpriseFile/img/xiaoxizhongxin.jpg" alt=""><a href="${pageContext.request.contextPath}/hr/hr_details"><span>职位详情</span></a></p>
            <p><img src="${pageContext.request.contextPath}/EnterpriseFile/img/zhanghaoanquan.jpg" alt=""><a href="${pageContext.request.contextPath}/hr/hr_updatepassword"><span>账号安全</span></a></p>
            
        </div>
        <div class="conter-right">
             <div class="right-top">
                 <div class="top-left">
                     <div class="top-title">
                         <span>企业简介</span>
                     </div>
                     <div class="enterprise-image">
                         <a href=""><span>企业形象</span></a>
                     </div>
                 </div>
                 <div class="top-right">
                     <span onclick="EditModify()">编辑</span>
                 </div>
             </div>
            <div class="introduction">
                 <div class="introduction-one-name">
                     <ul>
                         <li><img src="${pageContext.request.contextPath}/EnterpriseFile/img/ce.jpg" alt=""></li>
                         <li>
                             <p><span>东方嘉盛集团</span><img src="${pageContext.request.contextPath}/EnterpriseFile/img/renzheng.jpg" alt=""></p>
                             <p><span>民营企业  |  100-500人</span></p>
                             <p><span>成都  高新区   天府三街    物流园区申非路199号E2-4A仓库办公区</span></p>
                         </li>
                     </ul>
                 </div>
                 <div class="introduction-two-abbreviation">
                     <ul>
                         <li>
                             <p><span>简称</span></p>
                             <p><span>行业类别</span></p>
                             <p><span>公司官网</span></p>
                             <p><span>公司邮箱</span></p>
                             <p><span>邮政编码</span></p>
                         </li>
                         <li>
                             <p><span>东方嘉盛集团</span></p>
                             <p><span>专业服务/教育培训   学术研究服务业    旅游/酒店</span></p>
                             <p><span>www.easttop.com.cn</span></p>
                             <p><span>hr@dfjs.com</span></p>
                             <p><span>未填写</span></p>
                         </li>
                     </ul>
                 </div>
                 <div class="introduction-three-brief">
                     <ul>
                         <li><span>公司简介</span></li>
                         <li>
                             <p><span>
                                 东方嘉盛是一家创新型、综合性专业第三方物流企业，于2001年7月在深圳成立，总注册资本
                                 人民币1亿元。公司是我国最早涉足供应链管理行业的本土企业之一，目前在国内市场居于领
                                 先地位，在行业内具有较高的知名度和影响力。东方嘉盛创新设立“一体化供应链”模式，
                                 为客户提供向传统供应链前端及后端延伸的新型供应链一体化解决方案，整合采购、进出口
                                 代理和报关、仓储、配送、分销与售后服务等一站式物流服务，形成一体化的供应链管理，
                                 为 it、医疗设备、高档消费品、纺织、化工、机械等行业的国际国内著名企业提供第三方采
                                 购、分销、配送、仓储、报关等多环节、多方位的一体化物流服务。东方嘉盛以“控制物流
                                 运作成本，降低客户风险，成为客户***战略联盟伙伴”作为公司经营理念，始终将“满足客
                                 户需求”作为企业永续发展的基石。
                                 东方嘉盛目前已经形成了以上海、深圳、北京、重庆为中心的覆盖华南、华东、华北、华中的
                                 保税和非保税物流网络体系，在全国主要省会城市建立了自己的配送网络。公司目前在华东区
                                 设有11000平方米的仓储物流分拨中心，在深圳市福田保税区拥有12000平米的保税仓库。业务
                                 领域涵盖电子、洋酒、冷链、纺织、化工、机械、冶金等行业。公司拥有与多家著名企业（核
                                 心合作伙伴多为世界500强企业）战略合作的丰富经验，客户对公司服务质量和服务效率满意度
                                 高，认同公司品牌，行业经验的积累和品牌知名度的不断提升是公司未来发展的重要支撑，是.
                                 公司最重要的核心竞争力。
                                 东方嘉盛具有一支充满活力、蓬勃向上、精通业务的团队，“吃苦耐劳的品质、强烈的敬业精神
                                 ，创造性的工作态度、专业的服务意识”是公司不断进步并取得成功的原动力。鉴于公司业务的
                                 不断扩展，诚邀积极向上、诚信敬业的八方英才加入东方嘉盛，并和我们共同发展。我们将为您
                                 提供实现理想的发展空间、施展才华的广阔舞台和具有竞争力的薪资待遇。
                             </span></p>
                         </li>
                     </ul>
                 </div>
            </div>

            <!--编辑企业资料说-->
            <!--<div class="modify-logo-address zhuanhuan" >
                    <ul>
                        <li>
                            <p><span>企业名称</span></p>
                            <p><span>简称</span></p>
                            <p><span>企业性质</span></p>
                            <p><span>企业规模</span></p>
                            <p><span>公司地址</span></p>
                            <p><span>公司logo</span></p>
                        </li>
                        <li>
                            <p><input type="text"><span>必填项</span></p>
                            <p><input type="text"></p>
                            <p>
                                <select>
                                    <option>民营</option>
                                </select><span>必填项</span>
                            </p>
                            <p>
                                <select>
                                    <option>500-1000</option>
                                </select><span>必填项</span>
                            </p>
                            <p>
                                <select>
                                    <option>四川市</option>
                                </select>
                                <select>
                                    <option>成都市</option>
                                </select>
                                <select>
                                    <option>高新区</option>
                                </select>
                                <input type="text">
                                <span>(街区)必填项</span></p>
                            <p>
                                <input type="file" ><span>必填项</span>
                            </p>
                        </li>
                    </ul>
            </div>
            <div class="modify-email">
                <ul>
                    <li>
                        <p><span>行业类别</span></p>
                        <p><span>公司官网</span></p>
                        <p><span>公司邮箱</span></p>
                        <p><span>邮政编码</span></p>
                    </li>
                    <li>
                        <p>
                            <select>
                                <option></option>
                            </select>
                            <select>
                                <option></option>
                            </select><span>必填项</span>
                        </p>
                        <p>
                            <select>
                                <option></option>
                            </select>
                            <select>
                                <option></option>
                            </select><span>必填项</span>
                        </p>
                        <p><input type="text"><span>必填项</span></p>
                        <p><input type="text"></p>
                        <p><input type="text"></p>
                    </li>
                </ul>
            </div>
            <div class="modify-introduction">
                <ul>
                    <li><span>公司简历</span></li>
                    <li>
                        <p><input type="textarea"></p>
                        <p><span>必填项</span></p>
                        <p><input type="button" value="保存">&nbsp; <a href="">取消</a></p>
                    </li>
                </ul>
            </div>-->
        </div>
    </div>
</div>
<div class="lao-footer">
    <div class="footer-content mediate">
        <div class="footer-right"><img src="${pageContext.request.contextPath}/EnterpriseFile/img/logo.jpg" alt=""></div>
        <div class="content">
            <p>渝ICP备11015194-1</p>
            <p>Copyright ©2017-2018 www.huohr.com</p>
        </div>
        <div class="footer-left"><img src="${pageContext.request.contextPath}/EnterpriseFile/img/Hibuick.jpg" alt=""></div>
    </div>

</div>
</body>
</html>
<script src="${pageContext.request.contextPath}/EnterpriseFile/jq/jquery-1.11.1.min.js"></script>
<script>

    function EditModify() {
        $(".conter-right").html("<div class='modify-logo-address'>" +
            "                    <ul>" +
            "                        <li>" +
            "                            <p><span>企业名称</span></p>" +
            "                            <p><span>简称</span></p>" +
            "                            <p><span>企业性质</span></p>" +
            "                            <p><span>企业规模</span></p>" +
            "                            <p><span>公司地址</span></p>" +
            "                            <p><span>公司logo</span></p>" +
            "                        </li>" +
            "                        <li>" +
            "                            <p><input type='text'><span>必填项</span></p>" +
            "                            <p><input type='text'></p>" +
            "                            <p>" +
            "                                <select>" +
            "                                    <option>民营</option>" +
            "                                </select><span>必填项</span>" +
            "                            </p>" +
            "                            <p>" +
            "                                <select>" +
            "                                    <option>500-1000</option>" +
            "                                </select><span>必填项</span>" +
            "                            </p>" +
            "                            <p>" +
            "                                <select>" +
            "                                    <option>四川市</option>" +
            "                                </select>" +
            "                                <select>" +
            "                                    <option>成都市</option>" +
            "                                </select>" +
            "                                <select>" +
            "                                    <option>高新区</option>" +
            "                                </select>" +
            "                                <input type='text'>" +
            "                                <span>(街区)必填项</span></p>" +
            "                            <p>" +
            "                                <input type='file' ><span>必填项</span>" +
            "                            </p>" +
            "                        </li>" +
            "                    </ul>" +
            "            </div>" +
            "            <div class='modify-email'>" +
            "                <ul>" +
            "                    <li>" +
            "                        <p><span>行业类别</span></p>" +
            "                        <p><span>公司官网</span></p>" +
            "                        <p><span>公司邮箱</span></p>" +
            "                        <p><span>邮政编码</span></p>" +
            "                    </li>" +
            "                    <li>" +
            "                        <p>" +
            "                            <select>" +
            "                                <option></option>" +
            "                            </select>" +
            "                            <select>" +
            "                                <option></option>" +
            "                            </select><span>必填项</span>" +
            "                        </p>" +
            "                        <p>" +
            "                            <select>" +
            "                                <option></option>" +
            "                            </select>" +
            "                            <select>" +
            "                                <option></option>" +
            "                            </select><span>必填项</span>" +
            "                        </p>" +
            "                        <p><input type='text'><span>必填项</span></p>" +
            "                        <p><input type='text'></p>" +
            "                        <p><input type='text'></p>" +
            "                    </li>" +
            "                </ul>" +
            "            </div>" +
            "            <div class='modify-introduction'>" +
            "                <ul>" +
            "                    <li><span>公司简历</span></li>" +
            "                    <li>" +
            "                        <p><input type='textarea'></p>" +
            "                        <p><span>必填项</span></p>" +
            "                        <p><input type='button' value='保存'>&nbsp; <a href=''>取消</a></p>" +
            "                    </li>" +
            "                </ul>" +
            "            </div> ")
    }

</script>