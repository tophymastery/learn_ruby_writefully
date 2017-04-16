module MyAdmin
  module PostsHelper
    class << self
      def render_states(view)
        view.sanitize(
          statuses(view).map do |status, path|
            view.content_tag :li, class: active(view, path) do
              view.link_to status, path
            end
          end.join
        )
      end

      private

      def active(view, path)
        view.current_page?(path) ? 'active' : nil
      end

      def statuses(view)
        # { 'all' => view.my_admin_posts_path,
        #   'draft' => view.by_status_my_admin_posts_path('draft'),
        #   'published' => view.by_status_my_admin_posts_path('published')}

        { 'all' => view.my_admin_posts_path }.merge(
          Post.statuses.keys.inject({}) do |hash, status|
            hash.merge(status => view.by_status_my_admin_posts_path(status))
          end
        )
      end
    end
  end
end