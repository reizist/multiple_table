class PdfsController < ApplicationController
  def sample
    respond_to do |format|
      format.html { redirect_to sample_pdf_path(format: :pdf, debug: 1)}
      format.pdf do
        render pdf: 'sample',
               encoding: 'UTF-8',
               layout: 'pdf.html',
               type: params[:types],
               random: params[:random],
               show_as_html: params[:debug].present?,
               save_to_file: Rails.root.join('tmp', "test.pdf")
      end
      #format.pdf { send_file(Rails.root.join('tmp', "test.pdf"), filename: 'hoge.pdf') }
    end
  end
end
