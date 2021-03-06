﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginUpdate.aspx.cs" Inherits="JiaoYou_Login_LoginUpdate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href="../css/css.css" rel="stylesheet" type="text/css" />
    <script language="JavaScript" type="text/javascript" src="../js/area_data.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 675px; height: 1614px; margin: auto; font-size: 16px;">
            <div style="width: 100%; text-align: center; font-size: 20px; line-height: 20px; padding-top: 18px;">
                修改会员档案信息
            </div>
            <div style="clear: both; padding-top: 20px;">
                <div style="width: 150px; height: 40px; text-align: right; float: left;">用户Email：</div>
                <div style="float: left; height: 40px; width: 350px;">
                    <asp:TextBox ID="txtUserName" runat="server" ReadOnly="True" Width="200px"></asp:TextBox>（不允许修改）
                </div>
                <div></div>
            </div>
            <div style="clear: both">
                <div style="width: 150px; height: 40px; text-align: right; float: left;">原始密码：</div>
                <div style="float: left; height: 40px; width: 350px;">
                    <asp:Label ID="lblPwd" runat="server" BackColor="#E0E0E0" Height="25px" Text="Label" Width="173px"></asp:Label>
                </div>
                <div></div>
            </div>
            <div style="clear: both">
                <div style="width: 150px; height: 40px; text-align: right; float: left;">新密码：</div>
                <div style="float: left; height: 40px; width: 350px;">
                    <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" Width="169px"></asp:TextBox>
                </div>
                <div>
                </div>
            </div>
            <div style="clear: both">
                <div style="width: 150px; height: 40px; text-align: right; float: left;">确认新密码：</div>
                <div style="float: left; height: 40px; width: 350px;">
                    <asp:TextBox ID="txtRePwd" runat="server" TextMode="Password" Width="170px"></asp:TextBox>
                </div>
                <div>
                </div>
            </div>
            <div style="clear: both">
                <div style="width: 150px; height: 40px; text-align: right; float: left;">用户妮称：</div>
                <div style="float: left; height: 40px; width: 350px;">
                    <asp:TextBox ID="txtNickName" runat="server" Width="170px"></asp:TextBox>
                </div>
                <div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtNickName"
                        ErrorMessage="**  必填项"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div style="clear: both">
                <div style="width: 150px; height: 40px; text-align: right; float: left;">性别：</div>
                <div style="float: left; height: 40px; width: 350px;">
                    <select id="sltSex" runat="server" name="p_house" style="width: 70px">
                        <option selected="selected" value="0">请选择</option>
                        <option value="男">男</option>
                        <option value="女">女</option>
                    </select>
                    （不允许修改）
                </div>
                <div>
                </div>
            </div>
            <div style="clear: both">
                <div style="width: 150px; height: 40px; text-align: right; float: left;">出生日期：</div>
                <div style="float: left; height: 40px; width: 350px;">
                    <asp:TextBox ID="txtBirth" runat="server" ReadOnly="True" Width="170px"></asp:TextBox>（不允许修改）
                </div>
                <div>
                </div>
            </div>
            <div style="clear: both">
                <div style="width: 150px; height: 40px; text-align: right; float: left;">所在地区：</div>
                <div style="float: left; height: 40px; width: 350px;">
                    <select id="sltState" runat="server" name="state" onchange="set_city(this, this.form.sltCity)"
                        style="width: 90px">
                        <option selected="selected" value="0">选择省</option>
                        <option value="北京市">北京市</option>
                        <option value="上海市">上海市</option>
                        <option value="天津市">天津市</option>
                        <option value="重庆市">重庆市</option>
                        <option value="河北省">河北省</option>
                        <option value="山西省">山西省</option>
                        <option value="辽宁省">辽宁省</option>
                        <option value="吉林省">吉林省</option>
                        <option value="黑龙江省">黑龙江省</option>
                        <option value="江苏省">江苏省</option>
                        <option value="浙江省">浙江省</option>
                        <option value="安徽省">安徽省</option>
                        <option value="福建省">福建省</option>
                        <option value="江西省">江西省</option>
                        <option value="山东省">山东省</option>
                        <option value="河南省">河南省</option>
                        <option value="湖北省">湖北省</option>
                        <option value="湖南省">湖南省</option>
                        <option value="广东省">广东省</option>
                        <option value="海南省">海南省</option>
                        <option value="四川省">四川省</option>
                        <option value="贵州省">贵州省</option>
                        <option value="云南省">云南省</option>
                        <option value="陕西省">陕西省</option>
                        <option value="甘肃省">甘肃省</option>
                        <option value="青海省">青海省</option>
                        <option value="内蒙古自治区">内蒙古自治区</option>
                        <option value="广西壮族自治区">广西壮族自治区</option>
                        <option value="西藏自治区">西藏自治区</option>
                        <option value="宁夏回族自治区">宁夏回族自治区</option>
                        <option value="新疆维吾尔自治区">新疆维吾尔自治区</option>
                        <option value="中国台湾">中国台湾</option>
                        <option value="中国香港">中国香港</option>
                        <option value="中国澳门">中国澳门</option>
                    </select>
                    <select id="sltCity" runat="server" name="sltCity">
                        <option selected="selected" value="0">不限</option>
                    </select>
                </div>
                <div>
                </div>
            </div>
            <div style="clear: both">
                <div style="width: 150px; height: 40px; text-align: right; float: left;">身高：</div>
                <div style="float: left; height: 40px; width: 350px;">
                    <select id="sltStature" runat="server" name="p_height" style="width: 90px">
                        <option selected="selected" value="0">请选择</option>
                        <option value="100">100</option>
                        <option value="101">101</option>
                        <option value="102">102</option>
                        <option value="103">103</option>
                        <option value="104">104</option>
                        <option value="105">105</option>
                        <option value="106">106</option>
                        <option value="107">107</option>
                        <option value="108">108</option>
                        <option value="109">109</option>
                        <option value="110">110</option>
                        <option value="111">111</option>
                        <option value="112">112</option>
                        <option value="113">113</option>
                        <option value="114">114</option>
                        <option value="115">115</option>
                        <option value="116">116</option>
                        <option value="117">117</option>
                        <option value="118">118</option>
                        <option value="119">119</option>
                        <option value="120">120</option>
                        <option value="121">121</option>
                        <option value="122">122</option>
                        <option value="123">123</option>
                        <option value="124">124</option>
                        <option value="125">125</option>
                        <option value="126">126</option>
                        <option value="127">127</option>
                        <option value="128">128</option>
                        <option value="129">129</option>
                        <option value="130">130</option>
                        <option value="131">131</option>
                        <option value="132">132</option>
                        <option value="133">133</option>
                        <option value="134">134</option>
                        <option value="135">135</option>
                        <option value="136">136</option>
                        <option value="137">137</option>
                        <option value="138">138</option>
                        <option value="139">139</option>
                        <option value="140">140</option>
                        <option value="141">141</option>
                        <option value="142">142</option>
                        <option value="143">143</option>
                        <option value="144">144</option>
                        <option value="145">145</option>
                        <option value="146">146</option>
                        <option value="147">147</option>
                        <option value="148">148</option>
                        <option value="149">149</option>
                        <option value="150">150</option>
                        <option value="151">151</option>
                        <option value="152">152</option>
                        <option value="153">153</option>
                        <option value="154">154</option>
                        <option value="155">155</option>
                        <option value="156">156</option>
                        <option value="157">157</option>
                        <option value="158">158</option>
                        <option value="159">159</option>
                        <option value="160">160</option>
                        <option value="161">161</option>
                        <option value="162">162</option>
                        <option value="163">163</option>
                        <option value="164">164</option>
                        <option value="165">165</option>
                        <option value="166">166</option>
                        <option value="167">167</option>
                        <option value="168">168</option>
                        <option value="169">169</option>
                        <option value="170">170</option>
                        <option value="171">171</option>
                        <option value="172">172</option>
                        <option value="173">173</option>
                        <option value="174">174</option>
                        <option value="175">175</option>
                        <option value="176">176</option>
                        <option value="177">177</option>
                        <option value="178">178</option>
                        <option value="179">179</option>
                        <option value="180">180</option>
                        <option value="181">181</option>
                        <option value="182">182</option>
                        <option value="183">183</option>
                        <option value="184">184</option>
                        <option value="185">185</option>
                        <option value="186">186</option>
                        <option value="187">187</option>
                        <option value="188">188</option>
                        <option value="189">189</option>
                        <option value="190">190</option>
                        <option value="191">191</option>
                        <option value="192">192</option>
                        <option value="193">193</option>
                        <option value="194">194</option>
                        <option value="195">195</option>
                        <option value="196">196</option>
                        <option value="197">197</option>
                        <option value="198">198</option>
                        <option value="199">199</option>
                        <option value="200">200</option>
                        <option value="201">201</option>
                        <option value="202">202</option>
                        <option value="203">203</option>
                        <option value="204">204</option>
                        <option value="205">205</option>
                        <option value="206">206</option>
                        <option value="207">207</option>
                        <option value="208">208</option>
                        <option value="209">209</option>
                        <option value="210">210</option>
                        <option value="211">211</option>
                        <option value="212">212</option>
                        <option value="213">213</option>
                        <option value="214">214</option>
                        <option value="215">215</option>
                        <option value="216">216</option>
                        <option value="217">217</option>
                        <option value="218">218</option>
                        <option value="219">219</option>
                        <option value="220">220</option>
                        <option value="221">221</option>
                        <option value="222">222</option>
                        <option value="223">223</option>
                        <option value="224">224</option>
                        <option value="225">225</option>
                        <option value="226">226</option>
                        <option value="227">227</option>
                        <option value="228">228</option>
                        <option value="229">229</option>
                        <option value="230">230</option>
                        <option value="231">231</option>
                        <option value="232">232</option>
                        <option value="233">233</option>
                        <option value="234">234</option>
                        <option value="235">235</option>
                        <option value="236">236</option>
                        <option value="237">237</option>
                        <option value="238">238</option>
                        <option value="239">239</option>
                        <option value="240">240</option>
                        <option value="241">241</option>
                        <option value="242">242</option>
                        <option value="243">243</option>
                        <option value="244">244</option>
                        <option value="245">245</option>
                        <option value="246">246</option>
                        <option value="247">247</option>
                        <option value="248">248</option>
                        <option value="249">249</option>
                        <option value="250">250</option>
                    </select>
                    &nbsp; 厘米
                </div>
                <div>
                </div>
            </div>
            <div style="clear: both">
                <div style="width: 150px; height: 40px; text-align: right; float: left;">体重：</div>
                <div style="float: left; height: 40px; width: 350px;">
                    <select id="sltAvoirdupois" runat="server" name="p_heavy" style="width: 90px">
                        <option selected="selected" value="0">请选择</option>
                        <option value="40">40</option>
                        <option value="41">41</option>
                        <option value="42">42</option>
                        <option value="43">43</option>
                        <option value="44">44</option>
                        <option value="45">45</option>
                        <option value="46">46</option>
                        <option value="47">47</option>
                        <option value="48">48</option>
                        <option value="49">49</option>
                        <option value="50">50</option>
                        <option value="51">51</option>
                        <option value="52">52</option>
                        <option value="53">53</option>
                        <option value="54">54</option>
                        <option value="55">55</option>
                        <option value="56">56</option>
                        <option value="57">57</option>
                        <option value="58">58</option>
                        <option value="59">59</option>
                        <option value="60">60</option>
                        <option value="61">61</option>
                        <option value="62">62</option>
                        <option value="63">63</option>
                        <option value="64">64</option>
                        <option value="65">65</option>
                        <option value="66">66</option>
                        <option value="67">67</option>
                        <option value="68">68</option>
                        <option value="69">69</option>
                        <option value="70">70</option>
                        <option value="71">71</option>
                        <option value="72">72</option>
                        <option value="73">73</option>
                        <option value="74">74</option>
                        <option value="75">75</option>
                        <option value="76">76</option>
                        <option value="77">77</option>
                        <option value="78">78</option>
                        <option value="79">79</option>
                        <option value="80">80</option>
                        <option value="81">81</option>
                        <option value="82">82</option>
                        <option value="83">83</option>
                        <option value="84">84</option>
                        <option value="85">85</option>
                        <option value="86">86</option>
                        <option value="87">87</option>
                        <option value="88">88</option>
                        <option value="89">89</option>
                        <option value="90">90</option>
                        <option value="91">91</option>
                        <option value="92">92</option>
                        <option value="93">93</option>
                        <option value="94">94</option>
                        <option value="95">95</option>
                        <option value="96">96</option>
                        <option value="97">97</option>
                        <option value="98">98</option>
                        <option value="99">99</option>
                        <option value="100">100</option>
                        <option value="101">101</option>
                        <option value="102">102</option>
                        <option value="103">103</option>
                        <option value="104">104</option>
                        <option value="105">105</option>
                        <option value="106">106</option>
                        <option value="107">107</option>
                        <option value="108">108</option>
                        <option value="109">109</option>
                        <option value="110">110</option>
                        <option value="111">111</option>
                        <option value="112">112</option>
                        <option value="113">113</option>
                        <option value="114">114</option>
                        <option value="115">115</option>
                        <option value="116">116</option>
                        <option value="117">117</option>
                        <option value="118">118</option>
                        <option value="119">119</option>
                        <option value="120">120</option>
                    </select>
                    &nbsp; 公斤
                </div>
                <div>
                </div>
            </div>
            <div style="clear: both">
                <div style="width: 150px; height: 40px; text-align: right; float: left;">学历：</div>
                <div style="float: left; height: 40px; width: 350px;">
                    <select id="sltEducation" runat="server" name="p_degree" style="width: 90px">
                        <option selected="selected" value="0">请选择</option>
                        <option value="博士">博士</option>
                        <option value="硕士">硕士</option>
                        <option value="本科">本科</option>
                        <option value="大专">大专</option>
                        <option value="高中/中专">高中/中专</option>
                        <option value="高中以下">高中以下</option>
                    </select>
                </div>
                <div>
                </div>
            </div>
            <div style="clear: both">
                <div style="width: 150px; height: 40px; text-align: right; float: left;">年收入：</div>
                <div style="float: left; height: 40px; width: 490px;">
                    <select id="sltEarning" runat="server" name="p_last_earning" style="width: 90px">
                        <option selected="selected" value="0">请选择</option>
                        <option value="目前没有收入">目前没有收入</option>
                        <option value="不足￥1万">不足￥1万</option>
                        <option value="￥1-3万">￥1-3万</option>
                        <option value="￥3-5万">￥3-5万</option>
                        <option value="￥5-8万">￥5-8万</option>
                        <option value="￥8-12万">￥8-12万</option>
                        <option value="￥12-15万">￥12-15万</option>
                        <option value="￥15-20万">￥15-20万</option>
                        <option value="￥20-30万">￥20-30万</option>
                        <option value="￥30-50万">￥30-50万</option>
                        <option value="￥50-80万">￥50-80万</option>
                        <option value="￥80万以上">￥80万以上</option>
                    </select>
                    &nbsp; <span class="cGray99">请转换为人民币。实事求是哦！收入并不代表一切。</span>
                </div>
                <div>
                </div>
            </div>
            <div style="clear: both">
                <div style="width: 150px; height: 40px; text-align: right; float: left;">民族：</div>
                <div style="float: left; height: 40px; width: 490px;">
                    <select id="sltNation" runat="server" name="p_nation" style="width: 90px">
                        <option selected="selected" value="0">请选择</option>
                        <option value="汉族">汉族</option>
                        <option value="满族">满族</option>
                        <option value="蒙古族">蒙古族</option>
                        <option value="藏族">藏族</option>
                        <option value="维吾尔族">维吾尔族</option>
                        <option value="苗族">苗族</option>
                        <option value="回族">回族</option>
                        <option value="壮族">壮族</option>
                        <option value="朝鲜族">朝鲜族</option>
                        <option value="其它民族">其它民族</option>
                    </select>
                </div>
                <div>
                </div>
            </div>
            <div style="clear: both">
                <div style="width: 150px; height: 40px; text-align: right; float: left;">血型：</div>
                <div style="float: left; height: 40px; width: 490px;">
                    <select id="sltBloodType" runat="server" name="p_bloodgroup" style="width: 60px">
                        <option value="0">请选择</option>
                        <option value="A型">A型</option>
                        <option selected="selected" value="B型">B型</option>
                        <option value="AB型">AB型</option>
                        <option value="O型">O型</option>
                        <option value="未测过">未测过</option>
                    </select>
                </div>
                <div>
                </div>
            </div>
            <div style="clear: both">
                <div style="width: 150px; height: 40px; text-align: right; float: left;">相貌：</div>
                <div style="float: left; height: 40px; width: 490px;">
                    <select id="sltLooks" runat="server" name="p_feature" style="width: 120px">
                        <option value="0">请选择</option>
                        <option value="丑吖">丑吖</option>
                        <option value="马马虎虎">马马虎虎</option>
                        <option value="还行">还行</option>
                        <option selected="selected" value="漂亮可人/帅气">漂亮可人/帅气</option>
                        <option value="闭月羞花/貌若潘安">闭月羞花/貌若潘安</option>
                    </select>
                </div>
                <div>
                </div>
            </div>
            <div style="clear: both">
                <div style="width: 150px; height: 40px; text-align: right; float: left;">职业：</div>
                <div style="float: left; height: 40px; width: 490px;">
                    <asp:TextBox ID="txtMetier" runat="server" Width="270px"></asp:TextBox>
                </div>
                <div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtMetier"
                        ErrorMessage="**  必填项" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div style="clear: both">
                <div style="width: 150px; height: 40px; text-align: right; float: left;">住房：</div>
                <div style="float: left; height: 40px; width: 490px;">
                    <select id="sltHousing" runat="server" name="p_house" style="width: 90px">
                        <option selected="selected" value="0">请选择</option>
                        <option value="已购住房">已购住房</option>
                        <option value="与人合租">与人合租</option>
                        <option value="独自租房">独自租房</option>
                        <option value="与父母同住">与父母同住</option>
                        <option value="住单位房">住单位房</option>
                        <option value="住亲朋家">住亲朋家</option>
                    </select>
                </div>
                <div>
                </div>
            </div>
            <div style="clear: both">
                <div style="width: 150px; height: 40px; text-align: right; float: left;">购车：</div>
                <div style="float: left; height: 40px; width: 490px;">
                    <select id="sltBuyCar" runat="server" name="p_auto" style="width: 90px">
                        <option selected="selected" value="0">请选择</option>
                        <option value="暂未购车">暂未购车</option>
                        <option value="已购经济型车">已购经济型车</option>
                        <option value="已购中高档车">已购中高档车</option>
                    </select>
                </div>
                <div>
                </div>
            </div>
            <div style="clear: both">
                <div style="width: 150px; height: 40px; text-align: right; float: left;">婚姻状况：</div>
                <div style="float: left; height: 40px; width: 490px;">
                    <select id="sltMarriage" runat="server" name="p_marriage" style="width: 60px">
                        <option selected="selected" value="未婚">未婚</option>
                        <option value="离异">离异</option>
                        <option value="丧偶">丧偶</option>
                    </select>
                </div>
                <div>
                </div>
            </div>
            <div style="clear: both">
                <div style="width: 150px; height: 40px; text-align: right; float: left;">是否有小孩：</div>
                <div style="float: left; height: 40px; width: 490px;">
                    <select id="sltHaveBaby" runat="server" name="has_child" style="width: 60px">
                        <option selected="selected" value="没有">没有</option>
                        <option value="有">有</option>
                    </select>
                </div>
                <div>
                </div>
            </div>
            <div style="clear: both">
                <div style="width: 150px; height: 40px; text-align: right; float: left;">未来时候要孩子：</div>
                <div style="float: left; height: 40px; width: 490px;">
                    <select id="sltHavingBaby" runat="server" name="need_child" style="width: 60px">
                        <option selected="selected" value="想要">想要</option>
                        <option value="也许要">也许要</option>
                        <option value="不想要">不想要</option>
                    </select>
                </div>
                <div>
                </div>
            </div>
            <div style="clear: both">
                <div style="width: 150px; height: 40px; text-align: right; float: left;">吸烟：</div>
                <div style="float: left; height: 40px; width: 490px;">
                    <select id="sltSmoke" runat="server" name="p_smoke" style="width: 90px">
                        <option selected="selected" value="0">请选择</option>
                        <option value="厌恶">厌恶</option>
                        <option value="不吸">不吸</option>
                        <option value="偶尔">偶尔</option>
                        <option value="经常">经常</option>
                    </select>
                </div>
                <div>
                </div>
            </div>
            <div style="clear: both">
                <div style="width: 150px; height: 40px; text-align: right; float: left;">喝酒：</div>
                <div style="float: left; height: 40px; width: 490px;">
                    <select id="sltDrink" runat="server" name="p_tipple" style="width: 90px">
                        <option selected="selected" value="0">请选择</option>
                        <option value="厌恶">厌恶</option>
                        <option value="不喝">不喝</option>
                        <option value="偶尔">偶尔</option>
                        <option value="经常">经常</option>
                    </select>
                </div>
                <div>
                </div>
            </div>
            <div style="clear: both">
                <div style="width: 150px; height: 40px; text-align: right; float: left;">交流语言：</div>
                <div style="float: left; height: 40px; width: 490px;">
                    <asp:TextBox ID="txtLanage" runat="server" Width="270px"></asp:TextBox>
                </div>
                <div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtLanage"
                        ErrorMessage="**  必填项" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div style="clear: both">
                <div style="width: 150px; height: 180px; text-align: right; float: left;">性格与爱好：</div>
                <div style="float: left; height: 180px; width: 490px;">
                    <asp:TextBox ID="txtSexLike" runat="server" Height="140px" TextMode="MultiLine" Width="377px"></asp:TextBox>
                </div>
                <div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtSexLike"
                        ErrorMessage="**  必填项" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div style="clear: both">
                <div style="width: 150px; height: 40px; text-align: right; float: left;">设置速配条件</div>
                <div style="float: left; height: 40px; width: 490px;">
                </div>
                <div>
                </div>
            </div>
            <div style="clear: both">
                <div style="width: 150px; height: 40px; text-align: right; float: left;">想在哪里找朋友：</div>
                <div style="float: left; height: 40px; width: 490px;">
                    <select id="sltFState" runat="server" name="province" onchange="set_city(this, this.form.sltFCity)"
                        style="width: 90px">
                        <option selected="selected" value="0">选择省</option>
                        <option value="北京市">北京市</option>
                        <option value="上海市">上海市</option>
                        <option value="天津市">天津市</option>
                        <option value="重庆市">重庆市</option>
                        <option value="河北省">河北省</option>
                        <option value="山西省">山西省</option>
                        <option value="辽宁省">辽宁省</option>
                        <option value="吉林省">吉林省</option>
                        <option value="黑龙江省">黑龙江省</option>
                        <option value="江苏省">江苏省</option>
                        <option value="浙江省">浙江省</option>
                        <option value="安徽省">安徽省</option>
                        <option value="福建省">福建省</option>
                        <option value="江西省">江西省</option>
                        <option value="山东省">山东省</option>
                        <option value="河南省">河南省</option>
                        <option value="湖北省">湖北省</option>
                        <option value="湖南省">湖南省</option>
                        <option value="广东省">广东省</option>
                        <option value="海南省">海南省</option>
                        <option value="四川省">四川省</option>
                        <option value="贵州省">贵州省</option>
                        <option value="云南省">云南省</option>
                        <option value="陕西省">陕西省</option>
                        <option value="甘肃省">甘肃省</option>
                        <option value="青海省">青海省</option>
                        <option value="内蒙古自治区">内蒙古自治区</option>
                        <option value="广西壮族自治区">广西壮族自治区</option>
                        <option value="西藏自治区">西藏自治区</option>
                        <option value="宁夏回族自治区">宁夏回族自治区</option>
                        <option value="新疆维吾尔自治区">新疆维吾尔自治区</option>
                        <option value="中国台湾">中国台湾</option>
                        <option value="中国香港">中国香港</option>
                        <option value="中国澳门">中国澳门</option>
                    </select>
                    <select id="sltFCity" runat="server" name="sltFCity">
                        <option selected="selected" value="0">不限</option>
                    </select>
                </div>
                <div>
                </div>
            </div>
            <div style="clear: both">
                <div style="width: 150px; height: 40px; text-align: right; float: left;">希望对方的年龄</div>
                <div style="float: left; height: 40px; width: 490px;">
                    从
                                <select id="sltFAgeStar" runat="server" name="p_age_from">
                                    <option value="0">不限</option>
                                    <option value="18">18</option>
                                    <option value="19">19</option>
                                    <option selected="selected" value="20">20</option>
                                    <option value="21">21</option>
                                    <option value="22">22</option>
                                    <option value="23">23</option>
                                    <option value="24">24</option>
                                    <option value="25">25</option>
                                    <option value="26">26</option>
                                    <option value="27">27</option>
                                    <option value="28">28</option>
                                    <option value="29">29</option>
                                    <option value="30">30</option>
                                    <option value="31">31</option>
                                    <option value="32">32</option>
                                    <option value="33">33</option>
                                    <option value="34">34</option>
                                    <option value="35">35</option>
                                    <option value="36">36</option>
                                    <option value="37">37</option>
                                    <option value="38">38</option>
                                    <option value="39">39</option>
                                    <option value="40">40</option>
                                    <option value="41">41</option>
                                    <option value="42">42</option>
                                    <option value="43">43</option>
                                    <option value="44">44</option>
                                    <option value="45">45</option>
                                    <option value="46">46</option>
                                    <option value="47">47</option>
                                    <option value="48">48</option>
                                    <option value="49">49</option>
                                    <option value="50">50</option>
                                    <option value="51">51</option>
                                    <option value="52">52</option>
                                    <option value="53">53</option>
                                    <option value="54">54</option>
                                    <option value="55">55</option>
                                    <option value="56">56</option>
                                    <option value="57">57</option>
                                    <option value="58">58</option>
                                    <option value="59">59</option>
                                    <option value="60">60</option>
                                    <option value="61">61</option>
                                    <option value="62">62</option>
                                    <option value="63">63</option>
                                    <option value="64">64</option>
                                    <option value="65">65</option>
                                    <option value="66">66</option>
                                    <option value="67">67</option>
                                    <option value="68">68</option>
                                    <option value="69">69</option>
                                    <option value="70">70</option>
                                    <option value="71">71</option>
                                    <option value="72">72</option>
                                    <option value="73">73</option>
                                    <option value="74">74</option>
                                    <option value="75">75</option>
                                    <option value="76">76</option>
                                    <option value="77">77</option>
                                    <option value="78">78</option>
                                    <option value="79">79</option>
                                    <option value="80">80</option>
                                </select>
                    到
                                <select id="sltFAgeEnd" runat="server" name="p_age_to">
                                    <option value="0">不限</option>
                                    <option value="18">18</option>
                                    <option value="19">19</option>
                                    <option value="20">20</option>
                                    <option value="21">21</option>
                                    <option value="22">22</option>
                                    <option value="23">23</option>
                                    <option value="24">24</option>
                                    <option selected="selected" value="25">25</option>
                                    <option value="26">26</option>
                                    <option value="27">27</option>
                                    <option value="28">28</option>
                                    <option value="29">29</option>
                                    <option value="30">30</option>
                                    <option value="31">31</option>
                                    <option value="32">32</option>
                                    <option value="33">33</option>
                                    <option value="34">34</option>
                                    <option value="35">35</option>
                                    <option value="36">36</option>
                                    <option value="37">37</option>
                                    <option value="38">38</option>
                                    <option value="39">39</option>
                                    <option value="40">40</option>
                                    <option value="41">41</option>
                                    <option value="42">42</option>
                                    <option value="43">43</option>
                                    <option value="44">44</option>
                                    <option value="45">45</option>
                                    <option value="46">46</option>
                                    <option value="47">47</option>
                                    <option value="48">48</option>
                                    <option value="49">49</option>
                                    <option value="50">50</option>
                                    <option value="51">51</option>
                                    <option value="52">52</option>
                                    <option value="53">53</option>
                                    <option value="54">54</option>
                                    <option value="55">55</option>
                                    <option value="56">56</option>
                                    <option value="57">57</option>
                                    <option value="58">58</option>
                                    <option value="59">59</option>
                                    <option value="60">60</option>
                                    <option value="61">61</option>
                                    <option value="62">62</option>
                                    <option value="63">63</option>
                                    <option value="64">64</option>
                                    <option value="65">65</option>
                                    <option value="66">66</option>
                                    <option value="67">67</option>
                                    <option value="68">68</option>
                                    <option value="69">69</option>
                                    <option value="70">70</option>
                                    <option value="71">71</option>
                                    <option value="72">72</option>
                                    <option value="73">73</option>
                                    <option value="74">74</option>
                                    <option value="75">75</option>
                                    <option value="76">76</option>
                                    <option value="77">77</option>
                                    <option value="78">78</option>
                                    <option value="79">79</option>
                                    <option value="80">80</option>
                                </select>
                    岁
                </div>
                <div>
                </div>
            </div>
            <div style="clear: both">
                <div style="width: 150px; height: 40px; text-align: right; float: left;">希望对方的身高</div>
                <div style="float: left; height: 40px; width: 490px;">
                    从
                                <select id="sltFStatureStar" runat="server" name="sltFStatureStar" style="width: 70px">
                                    <option selected="selected" value="0">不限</option>
                                    <option value="150">150</option>
                                    <option value="155">155</option>
                                    <option value="160">160</option>
                                    <option value="165">165</option>
                                    <option value="170">170</option>
                                    <option value="175">175</option>
                                    <option value="180">180</option>
                                    <option value="185">185</option>
                                    <option value="190">190</option>
                                    <option value="195">195</option>
                                    <option value="200">200</option>
                                </select>
                    到
                                <select id="sltFStatureEnd" runat="server" name="sltFStatureEnd" style="width: 70px">
                                    <option selected="selected" value="0">不限</option>
                                    <option value="150">150</option>
                                    <option value="155">155</option>
                                    <option value="160">160</option>
                                    <option value="165">165</option>
                                    <option value="170">170</option>
                                    <option value="175">175</option>
                                    <option value="180">180</option>
                                    <option value="185">185</option>
                                    <option value="190">190</option>
                                    <option value="195">195</option>
                                    <option value="200">200</option>
                                </select>
                    厘米
                </div>
                <div>
                </div>
            </div>
            <div style="clear: both">
                <div style="width: 150px; height: 40px; text-align: right; float: left;">对方的婚姻状态</div>
                <div style="float: left; height: 40px; width: 490px;">
                    <select id="sltFMarriage" runat="server" name="p_marriage" style="width: 60px">
                        <option selected="selected" value="不限">不限</option>
                        <option value="未婚">未婚</option>
                        <option value="离异">离异</option>
                        <option value="丧偶">丧偶</option>
                    </select>
                </div>
                <div>
                </div>
            </div>
            <div style="clear: both">
                <div style="width: 150px; height: 40px; text-align: right; float: left;"></div>
                <div style="float: left; height: 40px; width: 490px;">
                    <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="更　新" />
                </div>
                <div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
