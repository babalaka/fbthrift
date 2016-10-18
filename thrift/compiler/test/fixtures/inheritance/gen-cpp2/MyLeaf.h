/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
#pragma once

#include <thrift/lib/cpp2/ServiceIncludes.h>
#include <thrift/lib/cpp2/async/HeaderChannel.h>
#include <thrift/lib/cpp/TApplicationException.h>
#include <thrift/lib/cpp2/async/FutureRequest.h>
#include <folly/futures/Future.h>


#include "thrift/compiler/test/fixtures/inheritance/gen-cpp2/MyNode.h"

#include "thrift/compiler/test/fixtures/inheritance/gen-cpp2/module_types.h"

namespace folly {
  class IOBuf;
  class IOBufQueue;
}
namespace apache { namespace thrift {
  class Cpp2RequestContext;
  class BinaryProtocolReader;
  class CompactProtocolReader;
  namespace transport { class THeader; }
}}

namespace cpp2 {

class MyLeafSvAsyncIf {
 public:
  virtual ~MyLeafSvAsyncIf() {}
  virtual void async_tm_do_leaf(std::unique_ptr<apache::thrift::HandlerCallback<void>> callback) = 0;
  virtual void async_do_leaf(std::unique_ptr<apache::thrift::HandlerCallback<void>> callback) = delete;
  virtual folly::Future<folly::Unit> future_do_leaf() = 0;
};

class MyLeafAsyncProcessor;

class MyLeafSvIf : public MyLeafSvAsyncIf, virtual public  ::cpp2::MyNodeSvIf {
 public:
  typedef MyLeafAsyncProcessor ProcessorType;
  std::unique_ptr<apache::thrift::AsyncProcessor> getProcessor() override;
  virtual void do_leaf();
  folly::Future<folly::Unit> future_do_leaf() override;
  void async_tm_do_leaf(std::unique_ptr<apache::thrift::HandlerCallback<void>> callback) override;
};

class MyLeafSvNull : public MyLeafSvIf, virtual public  ::cpp2::MyNodeSvIf {
 public:
  void do_leaf() override;
};

class MyLeafAsyncProcessor : public  ::cpp2::MyNodeAsyncProcessor {
 public:
  const char* getServiceName() override;
  using BaseAsyncProcessor =  ::cpp2::MyNodeAsyncProcessor;
 protected:
  MyLeafSvIf* iface_;
  folly::Optional<std::string> getCacheKey(folly::IOBuf* buf, apache::thrift::protocol::PROTOCOL_TYPES protType) override;
 public:
  void process(std::unique_ptr<apache::thrift::ResponseChannel::Request> req, std::unique_ptr<folly::IOBuf> buf, apache::thrift::protocol::PROTOCOL_TYPES protType, apache::thrift::Cpp2RequestContext* context, folly::EventBase* eb, apache::thrift::concurrency::ThreadManager* tm) override;
 protected:
  bool isOnewayMethod(const folly::IOBuf* buf, const apache::thrift::transport::THeader* header) override;
 private:
  static std::unordered_set<std::string> onewayMethods_;
  static std::unordered_map<std::string, int16_t> cacheKeyMap_;
 public:
  using BinaryProtocolProcessFunc = ProcessFunc<MyLeafAsyncProcessor, apache::thrift::BinaryProtocolReader>;
  using BinaryProtocolProcessMap = ProcessMap<BinaryProtocolProcessFunc>;
  static const MyLeafAsyncProcessor::BinaryProtocolProcessMap& getBinaryProtocolProcessMap();
 private:
  static const MyLeafAsyncProcessor::BinaryProtocolProcessMap binaryProcessMap_;
 public:
  using CompactProtocolProcessFunc = ProcessFunc<MyLeafAsyncProcessor, apache::thrift::CompactProtocolReader>;
  using CompactProtocolProcessMap = ProcessMap<CompactProtocolProcessFunc>;
  static const MyLeafAsyncProcessor::CompactProtocolProcessMap& getCompactProtocolProcessMap();
 private:
  static const MyLeafAsyncProcessor::CompactProtocolProcessMap compactProcessMap_;
 private:
  template <typename ProtocolIn_, typename ProtocolOut_>
  void _processInThread_do_leaf(std::unique_ptr<apache::thrift::ResponseChannel::Request> req, std::unique_ptr<folly::IOBuf> buf, std::unique_ptr<ProtocolIn_> iprot, apache::thrift::Cpp2RequestContext* ctx, folly::EventBase* eb, apache::thrift::concurrency::ThreadManager* tm);
  template <typename ProtocolIn_, typename ProtocolOut_>
  void process_do_leaf(std::unique_ptr<apache::thrift::ResponseChannel::Request> req, std::unique_ptr<folly::IOBuf> buf, std::unique_ptr<ProtocolIn_> iprot,apache::thrift::Cpp2RequestContext* ctx,folly::EventBase* eb, apache::thrift::concurrency::ThreadManager* tm);
  template <class ProtocolIn_, class ProtocolOut_>
  static folly::IOBufQueue return_do_leaf(int32_t protoSeqId, apache::thrift::ContextStack* ctx);
  template <class ProtocolIn_, class ProtocolOut_>
  static void throw_do_leaf(std::unique_ptr<apache::thrift::ResponseChannel::Request> req,int32_t protoSeqId,apache::thrift::ContextStack* ctx,std::exception_ptr ep,apache::thrift::Cpp2RequestContext* reqCtx);
  template <class ProtocolIn_, class ProtocolOut_>
  static void throw_wrapped_do_leaf(std::unique_ptr<apache::thrift::ResponseChannel::Request> req,int32_t protoSeqId,apache::thrift::ContextStack* ctx,folly::exception_wrapper ew,apache::thrift::Cpp2RequestContext* reqCtx);
 public:
  MyLeafAsyncProcessor(MyLeafSvIf* iface) :
       ::cpp2::MyNodeAsyncProcessor(iface),
      iface_(iface) {}

  virtual ~MyLeafAsyncProcessor() {}
};

class MyLeafAsyncClient : public  ::cpp2::MyNodeAsyncClient {
 public:
  virtual const char* getServiceName();
  typedef std::unique_ptr<apache::thrift::RequestChannel, folly::DelayedDestruction::Destructor> channel_ptr;

  virtual ~MyLeafAsyncClient() {}

  MyLeafAsyncClient(std::shared_ptr<apache::thrift::RequestChannel> channel) :
       ::cpp2::MyNodeAsyncClient(channel) {}
  virtual void do_leaf(std::unique_ptr<apache::thrift::RequestCallback> callback);
  virtual void do_leaf(apache::thrift::RpcOptions& rpcOptions, std::unique_ptr<apache::thrift::RequestCallback> callback);
  virtual void sync_do_leaf();
  virtual void sync_do_leaf(apache::thrift::RpcOptions& rpcOptions);
  virtual folly::Future<folly::Unit> future_do_leaf();
  virtual folly::Future<folly::Unit> future_do_leaf(apache::thrift::RpcOptions& rpcOptions);
  virtual folly::Future<std::pair<folly::Unit, std::unique_ptr<apache::thrift::transport::THeader>>> header_future_do_leaf(apache::thrift::RpcOptions& rpcOptions);
  virtual void do_leaf(std::function<void (::apache::thrift::ClientReceiveState&&)> callback);
  static folly::exception_wrapper recv_wrapped_do_leaf(::apache::thrift::ClientReceiveState& state);
  static void recv_do_leaf(::apache::thrift::ClientReceiveState& state);
  // Mock friendly virtual instance method
  virtual void recv_instance_do_leaf(::apache::thrift::ClientReceiveState& state);
  virtual folly::exception_wrapper recv_instance_wrapped_do_leaf(::apache::thrift::ClientReceiveState& state);
  template <typename Protocol_>
  void do_leafT(Protocol_* prot, apache::thrift::RpcOptions& rpcOptions, std::unique_ptr<apache::thrift::RequestCallback> callback);
  template <typename Protocol_>
  static folly::exception_wrapper recv_wrapped_do_leafT(Protocol_* prot, ::apache::thrift::ClientReceiveState& state);
  template <typename Protocol_>
  static void recv_do_leafT(Protocol_* prot, ::apache::thrift::ClientReceiveState& state);
};

} // cpp2
namespace apache { namespace thrift {

}} // apache::thrift