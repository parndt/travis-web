Travis.JobController = Em.Controller.extend
  needs: ['repo']

  jobBinding: 'controllers.repo.job'
  repoBinding: 'controllers.repo.repo'
  commitBinding: 'job.commit'
  lineNumberBinding: 'controllers.repo.lineNumber'
  currentUserBinding: 'controllers.repo.currentUser'
  tabBinding: 'controllers.repo.tab'

  currentItemBinding: 'job'

  urlGithubCommit: (->
    Travis.Urls.githubCommit(@get('repo.slug'), @get('commit.sha'))
  ).property('repo.slug', 'commit.sha')
