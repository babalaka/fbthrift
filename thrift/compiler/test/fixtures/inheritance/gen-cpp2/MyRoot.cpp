/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
#include "thrift/compiler/test/fixtures/inheritance/gen-cpp2/MyRoot.h"

#include "thrift/compiler/test/fixtures/inheritance/gen-cpp2/MyRoot.tcc"

#include <thrift/lib/cpp2/protocol/Protocol.h>
#include <thrift/lib/cpp2/protocol/BinaryProtocol.h>
#include <thrift/lib/cpp2/protocol/CompactProtocol.h>
namespace cpp2 {

std::unique_ptr<apache::thrift::AsyncProcessor> MyRootSvIf::getProcessor() {
  return folly::make_unique<MyRootAsyncProcessor>(this);
}

void MyRootSvIf::do_root() {
  throw apache::thrift::TApplicationException("Function do_root is unimplemented");
}

folly::Future<folly::Unit> MyRootSvIf::future_do_root() {
  return apache::thrift::detail::si::future([&] { return do_root(); });
}

void MyRootSvIf::async_tm_do_root(std::unique_ptr<apache::thrift::HandlerCallback<void>> callback) {
  apache::thrift::detail::si::async_tm(this, std::move(callback), [&] { return future_do_root(); });
}

void MyRootSvNull::do_root() {}

const char* MyRootAsyncProcessor::getServiceName() {
  return "MyRoot";
}

folly::Optional<std::string> MyRootAsyncProcessor::getCacheKey(folly::IOBuf* buf, apache::thrift::protocol::PROTOCOL_TYPES protType) {
  return apache::thrift::detail::ap::get_cache_key(buf, protType, cacheKeyMap_);
}

void MyRootAsyncProcessor::process(std::unique_ptr<apache::thrift::ResponseChannel::Request> req, std::unique_ptr<folly::IOBuf> buf, apache::thrift::protocol::PROTOCOL_TYPES protType, apache::thrift::Cpp2RequestContext* context, folly::EventBase* eb, apache::thrift::concurrency::ThreadManager* tm) {
  apache::thrift::detail::ap::process(this, std::move(req), std::move(buf), protType, context, eb, tm);
}

bool MyRootAsyncProcessor::isOnewayMethod(const folly::IOBuf* buf, const apache::thrift::transport::THeader* header) {
  return apache::thrift::detail::ap::is_oneway_method(buf, header, onewayMethods_);
}

std::unordered_set<std::string> MyRootAsyncProcessor::onewayMethods_ {};
std::unordered_map<std::string, int16_t> MyRootAsyncProcessor::cacheKeyMap_ {};
const MyRootAsyncProcessor::BinaryProtocolProcessMap& MyRootAsyncProcessor::getBinaryProtocolProcessMap() {
  return binaryProcessMap_;
}

const MyRootAsyncProcessor::BinaryProtocolProcessMap MyRootAsyncProcessor::binaryProcessMap_ {
  {"do_root", &MyRootAsyncProcessor::_processInThread_do_root<apache::thrift::BinaryProtocolReader, apache::thrift::BinaryProtocolWriter>}
};
const MyRootAsyncProcessor::CompactProtocolProcessMap& MyRootAsyncProcessor::getCompactProtocolProcessMap() {
  return compactProcessMap_;
}

const MyRootAsyncProcessor::CompactProtocolProcessMap MyRootAsyncProcessor::compactProcessMap_ {
  {"do_root", &MyRootAsyncProcessor::_processInThread_do_root<apache::thrift::CompactProtocolReader, apache::thrift::CompactProtocolWriter>}
};

} // cpp2
namespace apache { namespace thrift {

}} // apache::thrift