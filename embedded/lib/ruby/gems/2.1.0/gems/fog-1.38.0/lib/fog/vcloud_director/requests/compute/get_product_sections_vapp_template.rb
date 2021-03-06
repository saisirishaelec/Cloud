module Fog
  module Compute
    class VcloudDirector
      class Real
        # Retrieve a list of ProductSection elements from a vApp template or
        # VM.
        #
        # @param [String] id Object identifier of the vApp template or VM.
        # @return [Excon::Response]
        #   * body<~Hash>:
        #
        # @see http://pubs.vmware.com/vcd-51/topic/com.vmware.vcloud.api.reference.doc_51/doc/operations/GET-ProductSections-vAppTemplate.html
        # @since vCloud API version 1.5
        def get_product_sections_vapp_template(id)
          request(
            :expects    => 200,
            :idempotent => true,
            :method     => 'GET',
            :parser     => Fog::ToHashDocument.new,
            :path       => "vAppTemplate/#{id}/productSections"
          )
        end
      end
    end
  end
end
