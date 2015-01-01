require "vagrant"

module VagrantPlugins
  module ProviderKvm
    module Errors
      class VagrantKVMError < Vagrant::Errors::VagrantError
        error_namespace("vagrant_kvm.errors")
      end

      class KvmNoConnection < VagrantKVMError
        error_key(:kvm_no_connection)
      end

      class KvmInvalidVersion < VagrantKVMError
        error_key(:kvm_invalid_version)
      end

      class KvmNoQEMUBinary < VagrantKVMError
        error_key(:kvm_no_qemu_binary)
      end

      class KvmBadBoxFormat < VagrantKVMError
        error_key(:kvm_bad_box_format)
      end

      class KvmFailedCommand < VagrantKVMError
        error_key(:kvm_failed_command)
      end

      class KvmFailStoragePool < VagrantKVMError
        error_key(:kvm_fail_storagepool)
      end
    end
  end
end
