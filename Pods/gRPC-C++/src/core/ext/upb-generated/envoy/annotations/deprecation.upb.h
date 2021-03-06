/* This file was generated by upbc (the upb compiler) from the input
 * file:
 *
 *     envoy/annotations/deprecation.proto
 *
 * Do not edit -- your changes will be discarded when the file is
 * regenerated. */

#ifndef ENVOY_ANNOTATIONS_DEPRECATION_PROTO_UPB_H_
#define ENVOY_ANNOTATIONS_DEPRECATION_PROTO_UPB_H_

#include "upb/msg_internal.h"
#include "upb/decode.h"
#include "upb/decode_fast.h"
#include "upb/encode.h"

#include "upb/port_def.inc"

#ifdef __cplusplus
extern "C" {
#endif

extern const upb_msglayout_ext envoy_annotations_disallowed_by_default_ext;
extern const upb_msglayout_ext envoy_annotations_deprecated_at_minor_version_ext;
extern const upb_msglayout_ext envoy_annotations_disallowed_by_default_enum_ext;
extern const upb_msglayout_ext envoy_annotations_deprecated_at_minor_version_enum_ext;
struct google_protobuf_EnumValueOptions;
struct google_protobuf_FieldOptions;
extern const upb_msglayout google_protobuf_EnumValueOptions_msginit;
extern const upb_msglayout google_protobuf_FieldOptions_msginit;

UPB_INLINE bool envoy_annotations_has_disallowed_by_default(const struct google_protobuf_FieldOptions *msg) { return _upb_msg_getext(msg, &envoy_annotations_disallowed_by_default_ext) != NULL; }
UPB_INLINE bool envoy_annotations_disallowed_by_default(const struct google_protobuf_FieldOptions *msg) { const upb_msg_ext *ext = _upb_msg_getext(msg, &envoy_annotations_disallowed_by_default_ext); return ext ? *UPB_PTR_AT(&ext->data, 0, bool) : false; }
UPB_INLINE bool envoy_annotations_has_deprecated_at_minor_version(const struct google_protobuf_FieldOptions *msg) { return _upb_msg_getext(msg, &envoy_annotations_deprecated_at_minor_version_ext) != NULL; }
UPB_INLINE upb_strview envoy_annotations_deprecated_at_minor_version(const struct google_protobuf_FieldOptions *msg) { const upb_msg_ext *ext = _upb_msg_getext(msg, &envoy_annotations_deprecated_at_minor_version_ext); return ext ? *UPB_PTR_AT(&ext->data, 0, upb_strview) : upb_strview_make("", strlen("")); }
UPB_INLINE bool envoy_annotations_has_disallowed_by_default_enum(const struct google_protobuf_EnumValueOptions *msg) { return _upb_msg_getext(msg, &envoy_annotations_disallowed_by_default_enum_ext) != NULL; }
UPB_INLINE bool envoy_annotations_disallowed_by_default_enum(const struct google_protobuf_EnumValueOptions *msg) { const upb_msg_ext *ext = _upb_msg_getext(msg, &envoy_annotations_disallowed_by_default_enum_ext); return ext ? *UPB_PTR_AT(&ext->data, 0, bool) : false; }
UPB_INLINE bool envoy_annotations_has_deprecated_at_minor_version_enum(const struct google_protobuf_EnumValueOptions *msg) { return _upb_msg_getext(msg, &envoy_annotations_deprecated_at_minor_version_enum_ext) != NULL; }
UPB_INLINE upb_strview envoy_annotations_deprecated_at_minor_version_enum(const struct google_protobuf_EnumValueOptions *msg) { const upb_msg_ext *ext = _upb_msg_getext(msg, &envoy_annotations_deprecated_at_minor_version_enum_ext); return ext ? *UPB_PTR_AT(&ext->data, 0, upb_strview) : upb_strview_make("", strlen("")); }
extern const upb_msglayout_file envoy_annotations_deprecation_proto_upb_file_layout;

#ifdef __cplusplus
}  /* extern "C" */
#endif

#include "upb/port_undef.inc"

#endif  /* ENVOY_ANNOTATIONS_DEPRECATION_PROTO_UPB_H_ */
