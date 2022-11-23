(var opts
     {:highlight_on_key false
      :debug false})

(fn setup [user]
  (let [merged (vim.tbl_deep_extend "force" {} opts (or user {}))]
    (set opts merged)
    (if (= opts true)
        (vim.notify (vim.inspect opts)))))

{: setup : opts}
