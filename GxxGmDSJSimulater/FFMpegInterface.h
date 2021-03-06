#ifndef _FFMpegInterface_H_
#define _FFMpegInterface_H_

#ifdef __cplusplus
extern "C" {
#endif
#include "libavformat/avformat.h"
#include "libavcodec/avcodec.h"
#include "libavutil/avutil.h"
#ifdef __cplusplus
};
#endif

//////////////////////////////////////////////////////////////////////////
//
// avformat.h
//
//////////////////////////////////////////////////////////////////////////

typedef void (* _av_register_all)(void);
typedef int (* _avformat_network_init)(void);

typedef int (* _avformat_open_input)(AVFormatContext **ps, const char *url, AVInputFormat *fmt, AVDictionary **options);
typedef void (* _avformat_close_input)(AVFormatContext **s);
typedef int (* _avformat_find_stream_info)(AVFormatContext *ic, AVDictionary **options);
typedef int (* _av_seek_frame)(AVFormatContext *s, int stream_index, int64_t timestamp, int flags);
typedef int (* _av_read_frame)(AVFormatContext *s, AVPacket *pkt);
typedef void (* _av_free_packet)(AVPacket *pkt);

typedef AVBitStreamFilterContext* (* _av_bitstream_filter_init)(const char *name);
typedef int (* _av_bitstream_filter_filter)(AVBitStreamFilterContext *bsfc, AVCodecContext *avctx, const char *args, uint8_t **poutbuf, int *poutbuf_size, const uint8_t *buf, int buf_size, int keyframe);
typedef void (* _av_bitstream_filter_close)(AVBitStreamFilterContext *bsf);

//////////////////////////////////////////////////////////////////////////
//
// avcodec.h
//
//////////////////////////////////////////////////////////////////////////

typedef void (* _avcodec_register_all)(void);
typedef int (* _av_copy_packet)(AVPacket *dst, const AVPacket *src);
typedef AVCodec* (* _avcodec_find_decoder)(enum AVCodecID id);
typedef AVCodec* (* _avcodec_find_encoder)(enum AVCodecID id);
typedef int (* _avcodec_open2)(AVCodecContext *avctx, const AVCodec *codec, AVDictionary **options);
typedef int (* _avcodec_close)(AVCodecContext *avctx);
typedef int (* _avcodec_decode_video2)(AVCodecContext *avctx, AVFrame *picture, int *got_picture_ptr, const AVPacket *avpkt);
typedef int (* _avcodec_decode_audio4)(AVCodecContext *avctx, AVFrame *frame, int *got_frame_ptr, const AVPacket *avpkt);
typedef int (* _avcodec_encode_audio2)(AVCodecContext *avctx, AVPacket *avpkt, const AVFrame *frame, int *got_packet_ptr);
typedef int (* _avcodec_encode_video2)(AVCodecContext *avctx, AVPacket *avpkt, const AVFrame *frame, int *got_packet_ptr);

//////////////////////////////////////////////////////////////////////////
//
// avutil.dll >>> mem.h
//
//////////////////////////////////////////////////////////////////////////

typedef void (* _av_free)(void *ptr);
typedef int (* _av_strerror)(int errnum, char *errbuf, size_t errbuf_size);

#endif//_FFMpegInterface_H_
