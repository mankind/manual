class AddFromRdfUriToSolrJob < ApplicationJob
  queue_as :default

  def perform(work_uri, files_uri, tenant_name)
    # Do something later
    Ubiquity::LoadFedoraToSolr.new(work_uri, files_uri, tenant_name).run

  end
end
