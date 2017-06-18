// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.27 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.27;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:2865,x:33316,y:33000,varname:node_2865,prsc:2|normal-7223-RGB,emission-175-OUT,olwid-2352-OUT,olcol-7338-OUT;n:type:ShaderForge.SFN_Tex2d,id:4952,x:32075,y:32756,ptovrint:True,ptlb:BaseTexture,ptin:_MainTex,cmnt:通常Color用テクスチャ,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-9651-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:7223,x:31920,y:33019,ptovrint:True,ptlb:Normal Map,ptin:_BumpMap,varname:_BumpMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True|UVIN-9651-UVOUT;n:type:ShaderForge.SFN_NormalVector,id:9757,x:31336,y:33053,prsc:2,pt:True;n:type:ShaderForge.SFN_LightVector,id:5704,x:31429,y:33204,varname:node_5704,prsc:2;n:type:ShaderForge.SFN_Dot,id:2771,x:31694,y:33199,varname:node_2771,prsc:2,dt:0|A-224-OUT,B-5704-OUT;n:type:ShaderForge.SFN_RemapRange,id:7030,x:31905,y:33247,cmnt:HalfLambert,varname:node_7030,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-2771-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:9958,x:32140,y:33485,varname:node_9958,prsc:2|IN-6767-OUT,IMIN-4108-OUT,IMAX-9036-OUT,OMIN-2186-OUT,OMAX-7148-OUT;n:type:ShaderForge.SFN_Slider,id:4789,x:31537,y:33488,ptovrint:False,ptlb:Mix_KageTexture,ptin:_Mix_KageTexture,varname:node_2066,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.001,cur:0.5,max:0.9999;n:type:ShaderForge.SFN_Vector1,id:2186,x:31694,y:33698,varname:node_2186,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:2264,x:31694,y:33779,varname:node_2264,prsc:2,v1:0;n:type:ShaderForge.SFN_OneMinus,id:6767,x:32093,y:33311,cmnt:Inverce for UV,varname:node_6767,prsc:2|IN-7030-OUT;n:type:ShaderForge.SFN_TexCoord,id:9651,x:31598,y:32748,varname:node_9651,prsc:2,uv:0;n:type:ShaderForge.SFN_Lerp,id:3454,x:32618,y:32743,varname:node_3454,prsc:2|A-4952-RGB,B-7699-RGB,T-9954-OUT;n:type:ShaderForge.SFN_Clamp01,id:9954,x:32300,y:33442,varname:node_9954,prsc:2|IN-9958-OUT;n:type:ShaderForge.SFN_Slider,id:9036,x:31537,y:33591,ptovrint:False,ptlb:Mix_BaseTexture,ptin:_Mix_BaseTexture,varname:node_9036,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.0001,cur:0.49,max:0.9999;n:type:ShaderForge.SFN_OneMinus,id:4108,x:31905,y:33435,varname:node_4108,prsc:2|IN-4789-OUT;n:type:ShaderForge.SFN_Tex2d,id:7699,x:32290,y:33120,ptovrint:False,ptlb:KageTexture,ptin:_KageTexture,cmnt:影Color用テクスチャ,varname:node_7699,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-9651-UVOUT;n:type:ShaderForge.SFN_Multiply,id:175,x:33089,y:32934,varname:node_175,prsc:2|A-9946-OUT,B-9393-RGB;n:type:ShaderForge.SFN_AmbientLight,id:9393,x:32853,y:32955,varname:node_9393,prsc:2;n:type:ShaderForge.SFN_SwitchProperty,id:224,x:31612,y:33009,ptovrint:False,ptlb:isKage_Normal,ptin:_isKage_Normal,cmnt:Normalマップを影に反映させるかスイッチする,varname:node_224,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-7812-OUT,B-9757-OUT;n:type:ShaderForge.SFN_NormalVector,id:7812,x:31315,y:32918,prsc:2,pt:False;n:type:ShaderForge.SFN_Tex2d,id:1990,x:32536,y:33504,ptovrint:False,ptlb:Outline_sampler,ptin:_Outline_sampler,cmnt:Outlineの入り抜き調整Sampler,varname:node_1990,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-9651-UVOUT;n:type:ShaderForge.SFN_Multiply,id:3163,x:33016,y:33600,varname:node_3163,prsc:2|A-1990-RGB,B-4142-OUT,C-8396-OUT;n:type:ShaderForge.SFN_Slider,id:4142,x:32584,y:33792,ptovrint:False,ptlb:Outline_Width,ptin:_Outline_Width,varname:node_4142,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_ComponentMask,id:2352,x:33117,y:33432,varname:node_2352,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-3163-OUT;n:type:ShaderForge.SFN_Color,id:9173,x:32830,y:33455,ptovrint:False,ptlb:Line_Color,ptin:_Line_Color,varname:node_9173,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:7338,x:33066,y:33244,varname:node_7338,prsc:2|A-4095-OUT,B-9173-RGB;n:type:ShaderForge.SFN_Tex2d,id:8288,x:32003,y:33736,ptovrint:False,ptlb:setKage,ptin:_setKage,cmnt:強制的に影にしたい部分をテクスチャで指定する,varname:node_8288,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-9651-UVOUT;n:type:ShaderForge.SFN_OneMinus,id:1120,x:32171,y:33736,varname:node_1120,prsc:2|IN-8288-RGB;n:type:ShaderForge.SFN_ComponentMask,id:7148,x:32347,y:33736,varname:node_7148,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-1120-OUT;n:type:ShaderForge.SFN_ViewVector,id:1867,x:31440,y:34071,varname:node_1867,prsc:2;n:type:ShaderForge.SFN_Dot,id:8666,x:31691,y:33999,cmnt: RimLight,varname:node_8666,prsc:2,dt:0|A-589-OUT,B-1867-OUT;n:type:ShaderForge.SFN_OneMinus,id:8063,x:31869,y:33999,varname:node_8063,prsc:2|IN-8666-OUT;n:type:ShaderForge.SFN_Power,id:6722,x:32209,y:34002,varname:node_6722,prsc:2|VAL-8063-OUT,EXP-7552-OUT;n:type:ShaderForge.SFN_Slider,id:7385,x:31673,y:34189,ptovrint:False,ptlb:Rim_Sharpness,ptin:_Rim_Sharpness,varname:node_7385,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:1,max:5;n:type:ShaderForge.SFN_Multiply,id:8457,x:32553,y:34002,varname:node_8457,prsc:2|A-3557-OUT,B-4450-RGB;n:type:ShaderForge.SFN_Color,id:4450,x:32356,y:34174,ptovrint:False,ptlb:Rim_Color,ptin:_Rim_Color,varname:node_4450,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Add,id:9946,x:32825,y:32815,cmnt:Add RimLight,varname:node_9946,prsc:2|A-3454-OUT,B-8457-OUT;n:type:ShaderForge.SFN_NormalVector,id:7143,x:31201,y:33804,prsc:2,pt:False;n:type:ShaderForge.SFN_NormalVector,id:5623,x:31201,y:33965,prsc:2,pt:True;n:type:ShaderForge.SFN_SwitchProperty,id:589,x:31440,y:33928,ptovrint:False,ptlb:isRim_Normal,ptin:_isRim_Normal,cmnt:NormalマップをRimLightに反映させるかスイッチする,varname:_Kage_Normal_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-7143-OUT,B-5623-OUT;n:type:ShaderForge.SFN_Multiply,id:4095,x:32815,y:32568,cmnt: For LineColorBase,varname:node_4095,prsc:2|A-4952-RGB,B-4952-RGB;n:type:ShaderForge.SFN_Vector1,id:8396,x:32906,y:33963,varname:node_8396,prsc:2,v1:0.001;n:type:ShaderForge.SFN_Multiply,id:7552,x:32042,y:34140,varname:node_7552,prsc:2|A-7385-OUT,B-4662-OUT;n:type:ShaderForge.SFN_Vector1,id:4662,x:31805,y:34260,varname:node_4662,prsc:2,v1:2;n:type:ShaderForge.SFN_Clamp01,id:3557,x:32368,y:34002,varname:node_3557,prsc:2|IN-6722-OUT;proporder:4952-9036-7699-4789-8288-7223-224-1990-4142-9173-7385-4450-589;pass:END;sub:END;*/

Shader "UnityChan/ToonShader_rim" {
    Properties {
        _MainTex ("BaseTexture", 2D) = "white" {}
        _Mix_BaseTexture ("Mix_BaseTexture", Range(0.0001, 0.9999)) = 0.49
        _KageTexture ("KageTexture", 2D) = "white" {}
        _Mix_KageTexture ("Mix_KageTexture", Range(0.001, 0.9999)) = 0.5
        _setKage ("setKage", 2D) = "white" {}
        _BumpMap ("Normal Map", 2D) = "bump" {}
        [MaterialToggle] _isKage_Normal ("isKage_Normal", Float ) = 0
        _Outline_sampler ("Outline_sampler", 2D) = "white" {}
        _Outline_Width ("Outline_Width", Range(0, 10)) = 0
        _Line_Color ("Line_Color", Color) = (0.5,0.5,0.5,1)
        _Rim_Sharpness ("Rim_Sharpness", Range(1, 5)) = 1
        [HDR]_Rim_Color ("Rim_Color", Color) = (0,0,0,1)
        [MaterialToggle] _isRim_Normal ("isRim_Normal", Float ) = 0
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "Outline"
            Tags {
            }
            Cull Front
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma exclude_renderers d3d11_9x xbox360 xboxone ps3 psp2 
            #pragma target 3.0
            #pragma glsl
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _Outline_sampler; uniform float4 _Outline_sampler_ST;
            uniform float _Outline_Width;
            uniform float4 _Line_Color;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float4 _Outline_sampler_var = tex2Dlod(_Outline_sampler,float4(TRANSFORM_TEX(o.uv0, _Outline_sampler),0.0,0)); // Outlineの入り抜き調整Sampler
                o.pos = UnityObjectToClipPos(float4(v.vertex.xyz + v.normal*(_Outline_sampler_var.rgb*_Outline_Width*0.001).r,1) );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex)); // 通常Color用テクスチャ
                return fixed4(((_MainTex_var.rgb*_MainTex_var.rgb)*_Line_Color.rgb),0);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers d3d11_9x xbox360 xboxone ps3 psp2 
            #pragma target 3.0
            #pragma glsl
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float _Mix_KageTexture;
            uniform float _Mix_BaseTexture;
            uniform sampler2D _KageTexture; uniform float4 _KageTexture_ST;
            uniform fixed _isKage_Normal;
            uniform sampler2D _setKage; uniform float4 _setKage_ST;
            uniform float _Rim_Sharpness;
            uniform float4 _Rim_Color;
            uniform fixed _isRim_Normal;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(i.uv0, _BumpMap)));
                float3 normalLocal = _BumpMap_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
////// Emissive:
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex)); // 通常Color用テクスチャ
                float4 _KageTexture_var = tex2D(_KageTexture,TRANSFORM_TEX(i.uv0, _KageTexture)); // 影Color用テクスチャ
                float node_4108 = (1.0 - _Mix_KageTexture);
                float node_2186 = 1.0;
                float4 _setKage_var = tex2D(_setKage,TRANSFORM_TEX(i.uv0, _setKage)); // 強制的に影にしたい部分をテクスチャで指定する
                float3 emissive = ((lerp(_MainTex_var.rgb,_KageTexture_var.rgb,saturate((node_2186 + ( ((1.0 - (dot(lerp( i.normalDir, normalDirection, _isKage_Normal ),lightDirection)*0.5+0.5)) - node_4108) * ((1.0 - _setKage_var.rgb).r - node_2186) ) / (_Mix_BaseTexture - node_4108))))+(saturate(pow((1.0 - dot(lerp( i.normalDir, normalDirection, _isRim_Normal ),viewDirection)),(_Rim_Sharpness*2.0)))*_Rim_Color.rgb))*UNITY_LIGHTMODEL_AMBIENT.rgb);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers d3d11_9x xbox360 xboxone ps3 psp2 
            #pragma target 3.0
            #pragma glsl
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float _Mix_KageTexture;
            uniform float _Mix_BaseTexture;
            uniform sampler2D _KageTexture; uniform float4 _KageTexture_ST;
            uniform fixed _isKage_Normal;
            uniform sampler2D _setKage; uniform float4 _setKage_ST;
            uniform float _Rim_Sharpness;
            uniform float4 _Rim_Color;
            uniform fixed _isRim_Normal;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(i.uv0, _BumpMap)));
                float3 normalLocal = _BumpMap_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
////// Lighting:
                float3 finalColor = 0;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma exclude_renderers d3d11_9x xbox360 xboxone ps3 psp2 
            #pragma target 3.0
            #pragma glsl
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _Mix_KageTexture;
            uniform float _Mix_BaseTexture;
            uniform sampler2D _KageTexture; uniform float4 _KageTexture_ST;
            uniform fixed _isKage_Normal;
            uniform sampler2D _setKage; uniform float4 _setKage_ST;
            uniform float _Rim_Sharpness;
            uniform float4 _Rim_Color;
            uniform fixed _isRim_Normal;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : SV_Target {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex)); // 通常Color用テクスチャ
                float4 _KageTexture_var = tex2D(_KageTexture,TRANSFORM_TEX(i.uv0, _KageTexture)); // 影Color用テクスチャ
                float node_4108 = (1.0 - _Mix_KageTexture);
                float node_2186 = 1.0;
                float4 _setKage_var = tex2D(_setKage,TRANSFORM_TEX(i.uv0, _setKage)); // 強制的に影にしたい部分をテクスチャで指定する
                o.Emission = ((lerp(_MainTex_var.rgb,_KageTexture_var.rgb,saturate((node_2186 + ( ((1.0 - (dot(lerp( i.normalDir, normalDirection, _isKage_Normal ),lightDirection)*0.5+0.5)) - node_4108) * ((1.0 - _setKage_var.rgb).r - node_2186) ) / (_Mix_BaseTexture - node_4108))))+(saturate(pow((1.0 - dot(lerp( i.normalDir, normalDirection, _isRim_Normal ),viewDirection)),(_Rim_Sharpness*2.0)))*_Rim_Color.rgb))*UNITY_LIGHTMODEL_AMBIENT.rgb);
                
                float3 diffColor = float3(0,0,0);
                o.Albedo = diffColor;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
