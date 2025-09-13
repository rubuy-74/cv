const filename = 'rubem-cv.pdf'

export default {
	async fetch(_request, env) {
		const object = await env.CV_BUCKET.get(filename);
		if (!object) {
			return new Response('Not found', { status: 404 });
		}
		return new Response(object.body, {
			headers: {
				'Content-Type': 'application/pdf',
				'Content-Disposition': `inline; filename=${filename}`,
			},
		});
	},
};
