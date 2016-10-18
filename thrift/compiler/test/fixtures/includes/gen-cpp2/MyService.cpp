/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
#include "thrift/compiler/test/fixtures/includes/gen-cpp2/MyService.h"

#include "thrift/compiler/test/fixtures/includes/gen-cpp2/MyService.tcc"

#include <thrift/lib/cpp2/protocol/Protocol.h>
#include <thrift/lib/cpp2/protocol/BinaryProtocol.h>
#include <thrift/lib/cpp2/protocol/CompactProtocol.h>
namespace cpp2 {

std::unique_ptr<apache::thrift::AsyncProcessor> MyServiceSvIf::getProcessor() {
  return folly::make_unique<MyServiceAsyncProcessor>(this);
}

void MyServiceSvIf::query(std::unique_ptr< ::cpp2::MyStruct> /*s*/, std::unique_ptr< ::cpp2::Included> /*i*/) {
  throw apache::thrift::TApplicationException("Function query is unimplemented");
}

folly::Future<folly::Unit> MyServiceSvIf::future_query(std::unique_ptr< ::cpp2::MyStruct> s, std::unique_ptr< ::cpp2::Included> i) {
  return apache::thrift::detail::si::future([&] { return query(std::move(s), std::move(i)); });
}

void MyServiceSvIf::async_tm_query(std::unique_ptr<apache::thrift::HandlerCallback<void>> callback, std::unique_ptr< ::cpp2::MyStruct> s, std::unique_ptr< ::cpp2::Included> i) {
  apache::thrift::detail::si::async_tm(this, std::move(callback), [&] { return future_query(std::move(s), std::move(i)); });
}

void MyServiceSvNull::query(std::unique_ptr< ::cpp2::MyStruct> /*s*/, std::unique_ptr< ::cpp2::Included> /*i*/) {}

const char* MyServiceAsyncProcessor::getServiceName() {
  return "MyService";
}

folly::Optional<std::string> MyServiceAsyncProcessor::getCacheKey(folly::IOBuf* buf, apache::thrift::protocol::PROTOCOL_TYPES protType) {
  return apache::thrift::detail::ap::get_cache_key(buf, protType, cacheKeyMap_);
}

void MyServiceAsyncProcessor::process(std::unique_ptr<apache::thrift::ResponseChannel::Request> req, std::unique_ptr<folly::IOBuf> buf, apache::thrift::protocol::PROTOCOL_TYPES protType, apache::thrift::Cpp2RequestContext* context, folly::EventBase* eb, apache::thrift::concurrency::ThreadManager* tm) {
  apache::thrift::detail::ap::process(this, std::move(req), std::move(buf), protType, context, eb, tm);
}

bool MyServiceAsyncProcessor::isOnewayMethod(const folly::IOBuf* buf, const apache::thrift::transport::THeader* header) {
  return apache::thrift::detail::ap::is_oneway_method(buf, header, onewayMethods_);
}

std::unordered_set<std::string> MyServiceAsyncProcessor::onewayMethods_ {};
std::unordered_map<std::string, int16_t> MyServiceAsyncProcessor::cacheKeyMap_ {};
const MyServiceAsyncProcessor::BinaryProtocolProcessMap& MyServiceAsyncProcessor::getBinaryProtocolProcessMap() {
  return binaryProcessMap_;
}

const MyServiceAsyncProcessor::BinaryProtocolProcessMap MyServiceAsyncProcessor::binaryProcessMap_ {
  {"query", &MyServiceAsyncProcessor::_processInThread_query<apache::thrift::BinaryProtocolReader, apache::thrift::BinaryProtocolWriter>}
};
const MyServiceAsyncProcessor::CompactProtocolProcessMap& MyServiceAsyncProcessor::getCompactProtocolProcessMap() {
  return compactProcessMap_;
}

const MyServiceAsyncProcessor::CompactProtocolProcessMap MyServiceAsyncProcessor::compactProcessMap_ {
  {"query", &MyServiceAsyncProcessor::_processInThread_query<apache::thrift::CompactProtocolReader, apache::thrift::CompactProtocolWriter>}
};

} // cpp2
namespace apache { namespace thrift {

}} // apache::thrift