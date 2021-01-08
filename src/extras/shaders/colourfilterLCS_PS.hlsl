sampler2D tex : register(s0);
float4 blurcol : register(c10);

//float4 blurcols[10] : register(c15);


float4 main(in float2 texcoord : TEXCOORD0) : COLOR0
{
	float4 dst = tex2D(tex, texcoord.xy);
	dst += dst*blurcol;
	dst.a = 1.0;
	return dst;
}
