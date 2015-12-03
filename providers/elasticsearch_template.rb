def whyrun_supported?
  true
end

use_inline_resources

action :create do
  beat = new_resource.beat
  formatron_elasticsearch_template beat do
    template JSON.parse(File.read("/etc/#{beat}/#{beat}.template.json"))
  end
end
