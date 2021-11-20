export class Tab {
  constructor(tab, groupId) {
    return (async () => {
      Object.assign(this, tab);
      this.groupId = groupId;

      return this;
    })();
  }

  async open() {
    await browser.tabs.update(this.id, { active: true });
  }

  async remove() {
    await browser.tabs.remove(this.id);
  }
}

async function getGroupId(Tab) {
  return await browser.sessions.getTabValue(Tab.id, "groupId");
}
